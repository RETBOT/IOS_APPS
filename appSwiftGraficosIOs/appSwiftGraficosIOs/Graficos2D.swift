//
//  Graficos2D.swift
//  appSwiftGraficosIOs
//
//  Created by Usuario invitado on 28/11/22.
//

import UIKit

class Graficos2D: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let canvas = UIGraphicsGetCurrentContext()
        canvas?.setLineWidth(3.0)
        //canvas?.setStrokeColor(UIColor.blue.cgColor)
        //let colorSpace = CGColorSpaceCreateDeviceRGB()
        
        
        //let componentes : [CGFloat] = [CGFloat(Float.random(in: 0.0..<1.0)), CGFloat(drand48()), 0.0, 1.0]
        // Investigar el tipo drand48
        //let color = CGColor(colorSpace: colorSpace, components: componentes)
        
        //canvas?.setStrokeColor(color!)
        canvas?.setStrokeColor(#colorLiteral(red: 0.8, green: 0.4, blue: 0.5, alpha: 1.0))
        
        // linea
        canvas?.move(to: CGPoint(x: 0, y: 0))
        canvas?.addLine(to: CGPoint(x: rect.width-50, y: rect.height))
        canvas?.strokePath()
        // rectangulo
        canvas?.move(to: CGPoint(x: 0, y: 0))
        canvas?.addRect(CGRect(x: rect.midX, y: 50, width: rect.width/2, height: rect.height/2))
        canvas?.fillPath()

        
    }
 

}
