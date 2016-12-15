//
//  GameScene.swift
//  Flip
//
//  Created by Maaran on 2016-12-13.
//  Copyright © 2016 Maaran. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    required init?(coder aDecoder : NSCoder){
    fatalError("init(coder) is not used in this app")
    }
    
    override init(size: CGSize){
        super.init(size: size)
        
        anchorPoint = CGPoint(x: 0.5, y: 0.5) //always centers the screen for all iphone sizes (I don't know why)
        
    }
}
