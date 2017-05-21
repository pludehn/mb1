//
//  Fixture.swift
//  Map_Board
//
//  Created by Paul Udehn on 5/20/17.
//  Copyright © 2017 Paul Udehn. All rights reserved.
//

import SpriteKit
class Fixture: SKSpriteNode {
    var lastPosX: CGFloat!
    var lastPosY: CGFloat!

    init(fixtureWidth: Double, fixtureHeight: Double) {
        let texture = SKTexture(imageNamed: "fixture1")
        let red = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
        super.init(texture: texture, color: red, size: CGSize(width: 80, height: 160))
        self.name = "myNodeName"
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let node : SKNode = self.atPoint(location)
            if node.name == "myNodeName" {

            }
        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let node : SKNode = self.atPoint(location)
            if node.name == "myNodeName" {
                self.position = touch.location(in: self)
            }
        }
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
