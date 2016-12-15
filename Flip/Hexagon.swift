//
//  Hexagon.swift
//  Flip
//
//  Created by Maaran on 2016-12-14.
//  Copyright © 2016 Maaran. All rights reserved.
//

import Foundation
import SpriteKit

enum hexType: Int, CustomStringConvertible{
    case unknown = 0, darkHex, lightHex, nullHex
    var spriteName: String {
        let spriteNames = ["LightHex","DarkHex","NullHex"]
        return spriteNames[rawValue - 1]
    }
    
    var highlightedSpriteName: String {
        return spriteName + "-Highlighted"
    }
    
    var description: String{
        return spriteName
    }
}

class Hexagon: CustomStringConvertible, Hashable{
    var posX = Int()
    var posY = Int()
    
    let hexType: hexType
    var sprite: SKSpriteNode?
    
    init(column: Int, row: Int, hexType: hexType) {
        self.posX = column
        self.posY = row
        self.hexType = hexType
    }
    var description: String{
        return "type:\(hexType) pos:(\(posX),\(posY))"
    }
    var hashValue: Int {
        return self.posY*10 + self.posX
    }
}

func ==(lhs: Hexagon, rhs: Hexagon) -> Bool{
    return lhs.posX == rhs.posX && lhs.posY == rhs.posY
}
