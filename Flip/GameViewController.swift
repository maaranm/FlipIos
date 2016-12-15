//
//  GameViewController.swift
//  Flip
//
//  Created by Maaran on 2016-12-13.
//  Copyright © 2016 Maaran. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    var scene: GameScene!
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override var shouldAutorotate: Bool{
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return[.portrait, .portraitUpsideDown]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //skview object represents content of a sprite kit
        let SKView = view as! SKView //! is used after as to force a downcast
        SKView.isMultipleTouchEnabled = false //disables multi touch?
        
        scene = GameScene(size: SKView.bounds.size) //size of game scene (origin is bottom left corner
        scene.scaleMode = .aspectFill
        scene.backgroundColor = .black
        
        SKView.presentScene(scene) //actually present the scene
    }
}
