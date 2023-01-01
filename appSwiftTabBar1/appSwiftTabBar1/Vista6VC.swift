//
//  Vista6VC.swift
//  appSwiftTabBar1
//
//  Created by Guest User on 12/12/22.
//
//  By: RETBOT
import UIKit
import SceneKit

class Vista6VC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var Iniciar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
    }
    @IBAction func Iniciar(_ sender: UIButton) {
        Malla()
    }
    
    
    func sinFunction(x: Float,z: Float) -> Float {
       return 0.2 * sin(x * 5 + z * 3) + 0.1 * cos(x * 5 + z * 10 + 0.6) + 0.05 * cos(x * x * z)
    }

    func squareFunction(x: Float,z: Float) -> Float {
       return x * x + z * z
    }

    func Malla(){
        let sceneView = SCNView(frame: self.imageView.frame)
        //  By: RETBOT
        self.imageView.addSubview(sceneView)
        let scene = SCNScene()
        sceneView.scene = scene
        
        let camara = SCNCamera()
        let camaraNodo = SCNNode()
        camaraNodo.camera = camara
    
        let gridSize = 40

        let capsuleRadius:CGFloat = 1.0 / CGFloat(gridSize - 1)
        let capsuleHeight:CGFloat = capsuleRadius * 6.0

        var z:Float = Float(-gridSize + 1) * Float(capsuleRadius)

        for _ in 0..<gridSize {
          var x:Float = Float(-gridSize + 1) * Float(capsuleRadius)
            for _ in 0..<gridSize {
              let capsule = SCNCapsule(capRadius: capsuleRadius, height: capsuleHeight)

              let hue = CGFloat(abs(x * z))
              let color = UIColor(hue: hue, saturation: 1.0, brightness: 1.0, alpha: 1.0)

              capsule.firstMaterial?.diffuse.contents = color

              let capsuleNode = SCNNode(geometry: capsule)
              
              scene.rootNode.addChildNode(capsuleNode)
              

              capsuleNode.position = SCNVector3Make(x, 2.0, z)

              let y = CGFloat(squareFunction(x: x, z: z))
            // let y = CGFloat(sinFunction(x: x, z: z))

              let moveUp = SCNAction.moveBy(x: 0, y: y, z: 0, duration: 2.0)
              let moveDown = SCNAction.moveBy(x: 0, y: -y, z: 0, duration: 2.0)

              let sequence = SCNAction.sequence([moveUp,moveDown])

              let repeatedSequence = SCNAction.repeatForever(sequence)
//  By: RETBOT
              capsuleNode.runAction(repeatedSequence)

              x += 2.0 * Float(capsuleRadius)
          }

            z += 2.0 * Float(capsuleRadius)
            
            for _ in 0..<gridSize {
              let capsule = SCNCapsule(capRadius: capsuleRadius, height: capsuleHeight)

              let hue = CGFloat(abs(x * z))
              let color = UIColor(hue: hue, saturation: 1.0, brightness: 1.0, alpha: 1.0)

              capsule.firstMaterial?.diffuse.contents = color

              let capsuleNode = SCNNode(geometry: capsule)
              
              scene.rootNode.addChildNode(capsuleNode)
              

              capsuleNode.position = SCNVector3Make(x, 2.0, z)

             // let y = CGFloat(squareFunction(x: x, z: z))
             let y = CGFloat(sinFunction(x: x, z: z))

              let moveUp = SCNAction.moveBy(x: 0, y: y, z: 0, duration: 2.0)
              let moveDown = SCNAction.moveBy(x: 0, y: -y, z: 0, duration: 2.0)

              let sequence = SCNAction.sequence([moveUp,moveDown])

              let repeatedSequence = SCNAction.repeatForever(sequence)

              capsuleNode.runAction(repeatedSequence)

              x += 2.0 * Float(capsuleRadius)
//  By: RETBOT
          }

            z += 2.0 * Float(capsuleRadius)
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
//  By: RETBOT
