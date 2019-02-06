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
    
    /*
     What are things you can draw on a canvas?
     - drawRect
     - drawCirc
     - canvas.drawText("HELLO WORLD", 100, 50, paintbrush)
     - drawBitmaps
     - drawLine
     
     - setColor
     - setTextSize
     - setStyle (FILL, STROKE)
    */
    
    
    // Example 1  - Adding text to the screen
    let label = SKLabelNode(text:"HELLO WORLD!")
    let label2 = SKLabelNode(text:"ABCD")
    
    // Example 2 - Draw a square on the screen
    let square = SKSpriteNode(color: SKColor.blue, size: CGSize(width: 50, height: 50))
    
    override func didMove(to view: SKView) {
        // output the size of the screen
        print("Screen size (w,h): \(size.width),\(size.height)")
        
        // configure your text
        label.position = CGPoint(x:size.width/2, y:size.height/2);
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
    }
    
}
