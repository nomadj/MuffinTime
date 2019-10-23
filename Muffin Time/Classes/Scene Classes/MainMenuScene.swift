//
//  MainMenuScene.swift
//  Muffin Time
//
//  Created by Bryan Albert on 7/28/18.
//  Copyright © 2018 Bryan. All rights reserved.
//

import SpriteKit

class MainMenuScene: SKScene {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self);
            
            if atPoint(location).name == "Start" {
                if let scene = GameplaySceneClass(fileNamed: "GameplayScene") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                    // Present the scene
                    view!.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: 2));
                }
            }
        }
    }
    

} // class



































