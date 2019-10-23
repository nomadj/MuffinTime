//
//  Player.swift
//  Muffin Time
//
//  Created by Bryan Albert on 7/29/18.
//  Copyright © 2018 Bryan. All rights reserved.
//

import SpriteKit

class Player: SKSpriteNode {
    
    private var minX = CGFloat(-300), maxX = CGFloat(300);
    
    func initializePlayer() {
        physicsBody = SKPhysicsBody(circleOfRadius: size.height / 2);
        physicsBody?.affectedByGravity = false;
        physicsBody?.isDynamic = false;
        physicsBody?.categoryBitMask = ColliderType.PLAYER;
        physicsBody?.contactTestBitMask = ColliderType.FRUIT_AND_BOMB;
        
    }
    
    func move(left: Bool) {
        if left {
            
            position.x -= 15
            
            if position.x < minX {
                position.x = minX;
            }
        } else {
            
            position.x += 15
            
            if position.x > maxX{
                position.x = maxX;
            }
        }
        
    }
    
} // class


































