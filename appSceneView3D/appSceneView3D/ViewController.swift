//
//  ViewController.swift
//  appSceneView3D
//
//  Created by Usuario invitado on 02/12/22.
//
//  By: RETBOT
import UIKit
import SceneKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //CREAR ESCENA
        let sceneview = SCNView(frame: self.view.frame)
        
        sceneview.backgroundColor = UIColor.orange
        
        self.view.addSubview(sceneview)
        
        let scene = SCNScene()
        //Asignamos el objeto escena (scene) para manejar los objetos a manipular
        sceneview.scene = scene
        //Definir la camara
        let camara = SCNCamera()
        //CREAMOS NODO Y ASIGNAMOS LA CAMARA
        let camaraNodo = SCNNode()
        camaraNodo.camera = camara
        //vista frontal del cubo
        camaraNodo.position = SCNVector3(x: 0.0,y: 6.0,z: 3.0)/// 3. 3. 3.
        
        //DEFINIR LUZ
        let luz = SCNLight()
        luz.type = SCNLight.LightType.omni
        
        let luzNodo = SCNNode()
        luzNodo.light = luz
        //  By: RETBOT
        luzNodo.position = SCNVector3(x: 1.0, y: 1.0, z: 1.5)
     // let cubo = SCNBox(width: 1.0, height: 2.0, length: 1.0, chamferRadius: 0.3)
        let cubo = SCNBox(width: 1.0, height: 2.0, length: 1.0, chamferRadius: 0.3)
        
        cubo.firstMaterial?.diffuse.contents = UIColor.green
        
        let cuboNodo = SCNNode(geometry: cubo)
        
        //definir contraints
        let contraint = SCNLookAtConstraint(target: cuboNodo)
        contraint.isGimbalLockEnabled = true
        camaraNodo.constraints=[contraint]
        //HAY QUE AGREGAR LOS NODOS A LA ESCENA
        
        scene.rootNode.addChildNode(luzNodo)
        scene.rootNode.addChildNode(camaraNodo)
        scene.rootNode.addChildNode(cuboNodo)
    }


}
//  By: RETBOT
