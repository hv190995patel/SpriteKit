//
//  GameScene.swift
//  SpriteKitIntro
//
//  Created by MacStudent on 2019-02-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {

    // Example 1  - Adding text to the screen
    let label = SKLabelNode(text:"HELLO SWIFT!")
    let label2 = SKLabelNode(text:"IOS")
    
    // Example 2 - Draw a square on the screen
    let square = SKSpriteNode(color: SKColor.blue, size: CGSize(width: 50, height: 50))
    
    // Example 3 - Draw an image on the screen
    let duck = SKSpriteNode(imageNamed: "psyduck")
    
    // Example 4 - Draw a circle on the screen
    let circle = SKShapeNode(circleOfRadius: 50)
    
    override func didMove(to view: SKView) {
        // output the size of the screen
        print("Screen size (w,h): \(size.width),\(size.height)")
        
        // Add images to the scene
        let bug = SKSpriteNode(imageNamed: "caterpie")
        bug.position = CGPoint(x:size.width/2, y:size.height/2)
        addChild(bug)
        
        duck.position = CGPoint(x:size.width/2+100, y:size.height/2)
        addChild(duck)
        
        
        // configure your text
        label.position = CGPoint(x:size.width/2, y:size.height/2)
        label.fontSize = 45
        label.fontColor = SKColor.yellow

        label2.fontSize = 60
        label2.position = CGPoint(x:size.width/2, y:200)
        
        // add it to your scene (draw it!)
        addChild(label)
        addChild(label2)
        
        // configure the square
        square.position = CGPoint(x: 105, y:700);
        // add square to scene
        addChild(square)
        
        // configure your circle
        // -----------------------
        // color of border
        circle.strokeColor = SKColor.blue
        // width of border
        circle.lineWidth = 5
        // fill color
        circle.fillColor = SKColor.white
        // location of circle
        circle.position = CGPoint(x:0, y:self.size.height/2)
        addChild(circle)
        
        //Movement  ->SKACTION
        //1. SINGLE MOVEMENT
        //2. SEQUENCE OF MOVEMENTS
        
        
        
        //1. MOVEMENT  (UP DOWN CIRCLE)
        let moveAction = SKAction.moveBy(x: 100, y: 0, duration: 15)
        
        let moveAction2 = SKAction.moveTo(x: 300, duration: 8)
        
        let newPosition = CGPoint(x:255,y:700)
        
        let moveAction3 = SKAction.move(to: newPosition, duration: 5)
        
        //2. APPLY THE MOVEMENT TO CHARACTER
        circle.run(moveAction3)
    }
    
}
