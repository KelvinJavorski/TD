//
//  GameObject.swift
//  Tower Defense
//
//  Created by Kelvin Javorski Soares on 04/07/20.
//  Copyright © 2020 Kelvin Javorski Soares. All rights reserved.
//

import Foundation
import SceneKit

protocol Updatable {
    func update(_ deltaTime: Float)
}

class GameObject: Updatable {
    var scene: SCNScene!
    var node: SCNNode!
      
    internal init(scene: SCNScene? = nil, node: SCNNode? = nil) {
        self.scene = scene
        self.node = node
    }

    deinit {
        self.node.removeFromParentNode()
    }
    
    func update(_ deltaTime: Float){
        
    }
    
    func configurePhysics(){
        
    }
}
