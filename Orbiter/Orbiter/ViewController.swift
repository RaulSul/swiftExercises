//
//  ViewController.swift
//  Orbiter
//
//  Created by Raul Sulaimanov on 02.04.19.
//  Copyright © 2019 Raul Sulaimanov. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        // Create a new scene

        let scene = SCNScene()
        
        //central earth object:
        let earth = SCNSphere(radius: 0.2)
        let earthMaterial = SCNMaterial()
        earthMaterial.diffuse.contents = UIColor.blue
        earth.materials = [earthMaterial]
        
        let earthNode = SCNNode(geometry: earth)
        earthNode.position = SCNVector3(0, 0, -0.8)
        
        
        //orbiting moon object:
        let moon = SCNSphere(radius: earth.radius / 3.7)
        let moonMaterial = SCNMaterial()
        moonMaterial.diffuse.contents = UIColor.gray
        moon.materials = [moonMaterial]
        
        let moonNode = SCNNode(geometry: moon)
        moonNode.position = SCNVector3(0, 0, -0.5)
        
        //uncomment following for more accurate distance:
        /*
         let distance = moon.radius * 220
        moonNode.position = SCNVector3(0, 0, -1 * distance)
         */
        
        //Helper
        let helperNode = SCNNode()
        helperNode.addChildNode(moonNode)
        earthNode.addChildNode(helperNode) //declare it as a child of earth
        helperNode.position = SCNVector3(0, 0, 0) //it's local to the earth coordinate system
        
        let rotation = SCNAction.repeatForever(SCNAction.rotate(by: .pi, around: SCNVector3(0, 1, 0), duration: 5))
        helperNode.runAction(rotation)
        
        //add all the necessary objets to the scene:
        scene.rootNode.addChildNode(earthNode)
        //scene.rootNode.addChildNode(helperNode)
        
        
        // Set the scene to the view
        sceneView.scene = scene
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate
    
/*
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
*/
    
}
