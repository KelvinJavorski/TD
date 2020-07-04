//
//  GameViewController.swift
//  Tower Defense
//
//  Created by Kelvin Javorski Soares on 29/06/20.
//  Copyright © 2020 Kelvin Javorski Soares. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {

    var lastFrameTime : Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func update(_ currentTime: Double){
        // Calculate the last time the method was called
        let deltaTime = currentTime - lastFrameTime
        // Update lastFrameTime to the current time
        lastFrameTime = currentTime
        
        guard deltaTime < 0.1 else { return }
    }
    
    @objc
    func handleTap(_ gestureRecognize: UIGestureRecognizer) {
        
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

}
