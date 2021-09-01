//
//  MenuScene.swift
//  StartMenuTest-3
//
//  Created by David Malicke on 8/24/21.
//

import SpriteKit



class MenuScene: SKScene {
    
    var newGameButtonNode: SKSpriteNode!
    var difficultyButtonNode: SKSpriteNode!
    var difficultyLabelNode: SKLabelNode!
    var settingsButtonNode: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        newGameButtonNode = (self.childNode(withName: "newGameButton") as! SKSpriteNode)
        settingsButtonNode = (self.childNode(withName: "settingsButton") as! SKSpriteNode)
        
        difficultyButtonNode = (self.childNode(withName: "difficultyButton") as! SKSpriteNode)
        difficultyLabelNode = (self.childNode(withName: "difficultyLabel") as! SKLabelNode)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        sceneTransition(touches, sceneName: "newGameButton", sceneClass:                 SceneManager.shared.transition(self, toScene: .GameScene, transition: SKTransition.fade(withDuration: 1)))
        let touch = touches.first
        
        if let location = touch?.location(in: self) {
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == "newGameButton" {
                

                
            }
            
            if nodesArray.first?.name == "settingsButton" {
                
                SceneManager.shared.transition(self, toScene: .OptionsScene, transition: SKTransition.fade(withDuration: 1))
            }
        }
    }
}
