//
//  GameScene.swift
//  Map_Board
//
//  Created by Paul Udehn on 5/18/17.
//  Copyright © 2017 Paul Udehn. All rights reserved.
//
import SpriteKit


class GameScene: SKScene {
    override func didMove(to: SKView) {
        if let grid = Grid(blockSize: 40.0, rows:100, cols:100) {
            grid.position = CGPoint (x:frame.midX, y:frame.midY)
            addChild(grid)
            
            let gamePiece = Fixture(fixtureWidth: Double(grid.blockSize * 2), fixtureHeight: Double(grid.blockSize * 4))
            gamePiece.setScale(1.25)
            gamePiece.isUserInteractionEnabled = true
            gamePiece.position = grid.gridPosition(row: 50, col: 50)
            gamePiece.zPosition = 2
            grid.addChild(gamePiece)
        }
    }
}
