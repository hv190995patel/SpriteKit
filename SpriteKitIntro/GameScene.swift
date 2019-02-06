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
    
    override func didMove(to view: SKView) {
        // configure your text
        label.position = CGPoint(x:200,y:250);
        label.fontSize = 45
        label.fontColor = SKColor.yellow
        
        // add it to your scene (draw it!)
        addChild(label)
        
    }
    
}
