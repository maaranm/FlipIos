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
        let spriteNames = ["lightHex","darkHex","nullHex"]
        return spriteNames[rawValue - 1]
    }
    
    var highlightedSpriteName: String {
        return spriteName + "-Highlighted"
    }
    
    var description: String{
        return spriteName
    }
}

class Hexagon: CustomStringConvertible{
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
}

struct gameVariables{
    static var numOfNull = 6
}
