//
//  SKScene.swift
//  StartMenuTest-3
//
//  Created by David Malicke on 8/31/21.
//

import Foundation
import SpriteKit

extension SKScene {
    
    //this won't work because the scenemanager parameter does not contain enough information to initialize the SceneManager class. It is missing enum. and so I think we need to create a way to find that information within this function call.
    
    func sceneTransition(_ touches: Set<UITouch>, sceneName: String, sceneClass: SceneManager) -> SceneManager {
        
        let touch = touches.first
        
        if let location = touch?.location(in: self) {
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == sceneName {
                
                return sceneClass
                
            }
        }
        
        return sceneClass
    }
}
