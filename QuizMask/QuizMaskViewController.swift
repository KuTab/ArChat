//
//  QuizMaskViewController.swift
//  QuizMask
//
//  Created by Egor Dadugin on 23.08.2021.
//

import UIKit
import ARKit

class QuizMaskViewController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet weak var ARScene: ARSCNView!
    
    var flag: Bool = true
    
    let glassesPlane = SCNPlane(width: 0.3, height: 0.15)
    
    var count: Int = 1
    var answers = ["left","left","right","right","left"]
    
    let glassesNode = SCNNode()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ARScene.delegate = self
        
        guard ARFaceTrackingConfiguration.isSupported else {
            print("Face tracking is not supported on this device")
            return
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let configuration = ARFaceTrackingConfiguration()
        ARScene.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        ARScene.session.pause()
    }
    
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        guard let device = ARScene.device else {
            return nil
        }
        let faceGeometry = ARSCNFaceGeometry(device: device)
        let faceNode = SCNNode(geometry: faceGeometry)
        //faceNode.geometry?.firstMaterial?.fillMode = .lines
        faceNode.geometry?.firstMaterial?.transparency = 0
        
        glassesPlane.firstMaterial?.isDoubleSided = true
        
        //Add image
        glassesPlane.firstMaterial?.diffuse.contents = UIImage(named: "Question\(count)")
        
        glassesNode.geometry = glassesPlane
        glassesNode.position.z = faceNode.boundingBox.max.z * 3 / 4
        glassesNode.position.y = 0.15
        
        faceNode.addChildNode(glassesNode)
        
        return faceNode
    }
    
    func renderer(_ renderer: SCNSceneRenderer, didUpdate node: SCNNode, for anchor: ARAnchor) {
        guard let faceAnchor = anchor as? ARFaceAnchor, let faceGeometry = node.geometry as? ARSCNFaceGeometry else {
            return
        }
        if(flag){
            if (faceAnchor.transform.columns.3.x > 0.05){
                print("right")
                if (answers[count-1] == "right"){
                    print("right answer")
                } else{
                    print("wrong answer")
                }
                
                if(count < 5){
                    count += 1
                }
                
                flag = false
            } else if (faceAnchor.transform.columns.3.x < -0.05){
                print("left")
                if(answers[count-1] == "left"){
                    print("right answer")
                } else{
                    print("wrong answer")
                }
                
                if(count < 5){
                    count += 1
                }
                
                flag = false
            }
        }
        
        glassesPlane.firstMaterial?.diffuse.contents = UIImage(named: "Question\(count)")
        
        glassesNode.geometry = glassesPlane
        
        if(faceAnchor.transform.columns.3.x < 0.03 && faceAnchor.transform.columns.3.x > -0.03){
            flag = true
        }
        
        faceGeometry.update(from: faceAnchor.geometry)
    }
}
