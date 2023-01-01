//
//  Graficos2D.swift
//  appSwiftTabBar1
//
//  Created by Guest User on 06/12/22.
//
//  By: RETBOT
import UIKit

class Graficos2D: UIView {
    @IBOutlet weak var segmented: UISegmentedControl!
    
    @IBOutlet weak var txtX1: UITextField!
    @IBOutlet weak var txtY1: UITextField!
    @IBOutlet weak var txtX2: UITextField!
    @IBOutlet weak var txtY2: UITextField!
    
    var x1 : CGFloat = 200
    var y1 : CGFloat = 200
    var x2 : CGFloat = 400
    var y2 : CGFloat = 400
    
    @IBOutlet weak var SliderX1: UISlider!
    @IBOutlet weak var SliderX2: UISlider!
    @IBOutlet weak var SliderY1: UISlider!
    @IBOutlet weak var SliderY2: UISlider!
    
    var seleccionado : Int = 0
    
   
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let canvas = UIGraphicsGetCurrentContext()
        canvas?.setLineWidth(1.0)

        // Gradientes
        let posicion : [CGFloat] = [0.0,0.25,0.75]
        
        //let colores = [UIColor.darkGray.cgColor, UIColor.green.cgColor, UIColor.blue.cgColor, UIColor.cyan.cgColor]
        
        let colores = [UIColor.brown.cgColor, UIColor.purple.cgColor, UIColor.orange.cgColor, UIColor.yellow.cgColor]
        let colorSpace1 = CGColorSpaceCreateDeviceRGB()
        let gradiente = CGGradient(colorsSpace: colorSpace1, colors: colores as CFArray, locations: posicion)
        //  By: RETBOT
        var startPoint = CGPoint()
        var endPoint = CGPoint()
        startPoint.x = 0
        startPoint.y = 0
        endPoint.x = rect.width
        endPoint.y = rect.height
        
        canvas?.drawLinearGradient(gradiente!, start: startPoint, end: endPoint, options: .drawsBeforeStartLocation)
        
        canvas?.setStrokeColor(#colorLiteral(red: Float(drand48()),green: Float(drand48()), blue: Float(drand48()), alpha: 1.0))
        
        if seleccionado == 0{
            // GRADIENT
            // Gradiente Radial
            let locationR : [CGFloat] = [0.0,0.5,1.0]
            let coloresR = [UIColor.brown.cgColor, UIColor.purple.cgColor, UIColor.orange.cgColor, UIColor.yellow.cgColor]
            
            let colorSpaceRadial = CGColorSpaceCreateDeviceRGB()
            
            let gradienteRadial = CGGradient(colorsSpace: colorSpaceRadial, colors: coloresR as CFArray, locations: locationR)
            
            var startPointR = CGPoint()
            var endPointR = CGPoint()
            startPointR.x = x1
            startPointR.y = y1
            endPointR.x = x2
            endPointR.y = y2
            
            // Se requieren dos radios
            let radio1 : CGFloat = 90.0
            let radio2 : CGFloat = -50.0
            canvas?.drawRadialGradient(gradienteRadial!, startCenter: startPointR, startRadius: radio1, endCenter: endPointR, endRadius: radio2, options: [])
        } else if seleccionado == 1 {
            // Curvas de bezier
            canvas?.move(to: CGPoint(x: x1, y: y1))
            canvas?.addCurve(to: CGPoint(x: x2, y: y2),
                                        control1: CGPoint(x: 20, y: 200),
                                        control2: CGPoint(x: rect.width-50, y: 50))
            canvas?.strokePath()
        } else if seleccionado == 2 {
            var midx : CGFloat = 0.0
            var midy : CGFloat = 0.0
            
            midx = rect.width/2
            midy = rect.height/2
            var y = rect.height
            
            
            for x in stride(from: midx-150, through: midx, by: 10) { // x = midx-250; x <= midx; x+=10
                y = midy - (x-60) * 0.4
                canvas?.move(to: CGPoint(x: x, y: midy))
                canvas?.addLine(to: CGPoint(x: midx, y: y))
                canvas?.strokePath()
            }
        
            for x in stride(from: midx, through: rect.height/2 - 89, by: 10) { //x = midx; x <= 570; x+=10
                y = midy - 100 + (x-midx+100) * 0.4
                canvas?.move(to: CGPoint(x: x, y: midy))
                canvas?.addLine(to: CGPoint(x: midx, y: y))
                canvas?.strokePath()
            }
     //  By: RETBOT
            for x in stride(from: midx+250, through: midx, by: -10) { //x = midx+250; x >= midx; x-=10
                y = midy + 100 - (x-midx) * 0.4
                canvas?.move(to: CGPoint(x: x, y: midy))
                canvas?.addLine(to: CGPoint(x: midx, y: y))
                canvas?.strokePath()
            }

            for x in stride(from:  midx, through:-35, by: -10) { //x = midx; x >= 70; x-=10
                y = midy + 100 - (midx-x) * 0.4
                canvas?.move(to: CGPoint(x: x, y: midy))
                canvas?.addLine(to: CGPoint(x: midx, y: y))
                canvas?.strokePath()
            }
        }
    }
    //  By: RETBOT
    @IBOutlet weak var btnDibujar: UIButton!
    
    @IBAction func btnDibujar(_ sender: UIButton) {
        x1 = CGFloat(Int(SliderX1.value))
        y1 = CGFloat(Int(SliderY1.value))
        x2 = CGFloat(Int(SliderX2.value))
        y2 = CGFloat(Int(SliderY2.value))
        
        seleccionado = self.segmented.selectedSegmentIndex
        
        self.setNeedsDisplay()
    
    }
    //  By: RETBOT
    @IBAction func segmented(_ sender: UISegmentedControl) {
        
    }

}
