//
//  ViewController.swift
//  appSwiftScenKitCamaraMover
//
//  Created by Guest User on 05/12/22.
//

import UIKit
import SceneKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var segmentoLuces: UISegmentedControl!
    @IBOutlet weak var segmentoFiguras: UISegmentedControl!
    
    @IBOutlet weak var sliderLuzX: UISlider!
    @IBOutlet weak var sliderLuzY: UISlider!
    @IBOutlet weak var sliderLuzZ: UISlider!
    
    @IBOutlet weak var sliderCamaraX: UISlider!
    @IBOutlet weak var sliderCamaraY: UISlider!
    @IBOutlet weak var sliderCamaraZ: UISlider!
    
    var tipoLuz : String?
    var tipoFigura : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipoLuz = "ambient"
        dibujaCubo() // dibuja Objeto 3D
    }

    // LUZ
    @IBAction func sliderLuzX(_ sender: UISlider) {
        sliderLuzX.value = sender.value
        dibujaCubo()
        
    }
    @IBAction func sliderLuzY(_ sender: UISlider) {
        sliderLuzY.value = sender.value
        dibujaCubo()
    }
    @IBAction func sliderLuzZ(_ sender: UISlider) {
        sliderLuzZ.value = sender.value
        dibujaCubo()
    }
    
    // CAMARA
    @IBAction func sliderCamaraX(_ sender: UISlider) {
        sliderCamaraX.value = sender.value
        dibujaCubo()
    }
    @IBAction func sliderCamaraY(_ sender: UISlider) {
        sliderCamaraY.value = sender.value
        dibujaCubo()
    }
    @IBAction func sliderCamaraZ(_ sender: UISlider) {
        sliderCamaraZ.value = sender.value
        dibujaCubo()
    }
    
    // SEGMENTED
    @IBAction func segmentoLuces(_ sender: UISegmentedControl) {
        let indice : Int = segmentoLuces.selectedSegmentIndex
        
        switch indice {
        case 0: tipoLuz = "ambient"
        case 1: tipoLuz = "directional"
        case 2: tipoLuz = "omni"
        case 3: tipoLuz = "spot"
        default:tipoLuz = "ambient"
        }
        
        dibujaCubo()
    }
    
    
    @IBAction func segmentoFiguras(_ sender: UISegmentedControl) {
        let indice : Int = segmentoLuces.selectedSegmentIndex
        
        switch indice {
        case 0: tipoFigura = 0
        case 1: tipoFigura = 1
        case 2: tipoFigura = 2
        case 3: tipoFigura = 3
        case 4: tipoFigura = 4
        case 5: tipoFigura = 5
        default:tipoFigura = 0
        }
        
        dibujaCubo()
    }
    
    
    func dibujaCubo(){
        let sceneView = SCNView(frame: self.imageView.frame)
        self.imageView.addSubview(sceneView)
        let scene = SCNScene()
        sceneView.scene = scene
        
        let camara = SCNCamera()
        let camaraNodo = SCNNode()
        camaraNodo.camera = camara
        
        // Vista de frente
        //camaraNodo.position = SCNVector3(x: 0.0, y: 0, z: 3.0)
        camaraNodo.position = SCNVector3(x: Float(sliderCamaraX.value), y:Float(sliderCamaraY.value), z:Float(sliderCamaraZ.value))
        
        let luz = SCNLight()
        //luz.type = SCNLight.LightType.spot
        luz.type = SCNLight.LightType(rawValue: tipoLuz!)
        
        luz.spotInnerAngle = 30.0 // DEBE SER MODIFICABLE
        luz.spotOuterAngle = 70.0 // DEBE SER MODIFICABLE
        luz.castsShadow = true
        
        let luzNodo = SCNNode()
        luzNodo.light = luz
        // Establecer los max y mins de los sliders
        luzNodo.position = SCNVector3(x: sliderLuzX.value, y:sliderLuzY.value, z:sliderLuzZ.value)
        
        //Cubo
        var geometriaCubo = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.2)
        // Piramide
       // let geometriaCubo = SCNPyramid(width: 1.0, height: 1.0, length: 1.0)
        // Cilindro
        //let geometriaCubo = SCNCylinder(radius: 0.5, height: 1.0)
        // Tubo
        //let geometriaCubo = SCNTube(innerRadius: 0.0, outerRadius: 1.0, height: 1.0)
        // Dona
        //let geometriaCubo = SCNTorus(ringRadius: 1.0, pipeRadius: 0.5)
        
        //let geometriaCubo = SCNCone(topRadius: 0.0, bottomRadius: 0.7, height: 1.0)
        
        //let geometriaCubo = SCNSphere(radius: 0.7)
        
        let cuboNodo = SCNNode(geometry: geometriaCubo)
        
        let constraint = SCNLookAtConstraint(target: cuboNodo)
        
        constraint.isGimbalLockEnabled = true
        camaraNodo.constraints = [constraint]
        luzNodo.constraints = [constraint]
        
        // PARA LAS SOMBRAS Y EL MATERIAL
        // HACER MODIFICACIONES
        let planoGeometria = SCNPlane(width: 50.0, height: 50.0)
        let planoNodo = SCNNode(geometry: planoGeometria)
        
        // Modifiar el valor angular de los 3 ejes
        planoNodo.eulerAngles = SCNVector3(x:GLKMathDegreesToRadians(-90), y: 0, z: 0)
        
        planoNodo.position = SCNVector3(x:0.0, y:-0.5, z:0.0)
        
        // Color cubo
        let materialCubo1 = SCNMaterial()
        materialCubo1.diffuse.contents = UIColor.systemGreen
        geometriaCubo.materials = [materialCubo1]
        
        // Color plano cubo
        let materialCubo2 = SCNMaterial()
        materialCubo2.diffuse.contents = UIColor.systemYellow
        planoGeometria.materials = [materialCubo2]
        
        // Utilizamos los nodos
        scene.rootNode.addChildNode(luzNodo)
        scene.rootNode.addChildNode(camaraNodo)
        scene.rootNode.addChildNode(cuboNodo)
        scene.rootNode.addChildNode(planoNodo)
        
    }
    
}

