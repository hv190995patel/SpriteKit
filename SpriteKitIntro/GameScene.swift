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
    let label = SKLabelNode(text:"GOOD MORNING!")
    let label2 = SKLabelNode(text:"HARSH")
    
    // Example 2 - Draw a square on the screen
    let square = SKSpriteNode(color: SKColor.blue, size: CGSize(width: 50, height: 50))
    
    // Example 3 - Draw an image on the screen
    let duck = SKSpriteNode(imageNamed: "psyduck")
    
    // Example 4 - Draw a circle on the screen
    let circle = SKShapeNode(circleOfRadius: 40)
    
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
        circle.strokeColor = SKColor.yellow
        // width of border
        circle.lineWidth = 5
        // fill color
        circle.fillColor = SKColor.magenta
        // location of circle
        circle.position = CGPoint(x:200, y:100)
        addChild(circle)
        
    }
    
}
