//
//  DegradadoLineal.swift
//  appSwiftGraficosIOs
//
//  Created by Usuario invitado on 29/11/22.
//
//  By: RETBOT
import UIKit

class DegradadoLineal: UIView {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let canvas = UIGraphicsGetCurrentContext()
        canvas?.setLineWidth(3.0)
        // Gradientes
        let posicion : [CGFloat] = [0.0,0.25,0.75]
        
        //let colores = [UIColor.darkGray.cgColor, UIColor.green.cgColor, UIColor.blue.cgColor, UIColor.cyan.cgColor]
        
        let colores = [UIColor.brown.cgColor, UIColor.purple.cgColor, UIColor.orange.cgColor, UIColor.yellow.cgColor]
        let colorSpace1 = CGColorSpaceCreateDeviceRGB()
        let gradiente = CGGradient(colorsSpace: colorSpace1, colors: colores as CFArray, locations: posicion)
        
        var startPoint = CGPoint()
        var endPoint = CGPoint()
        startPoint.x = 0.0
        startPoint.y = 0.0
        endPoint.x = rect.width
        endPoint.y = rect.height
        
        canvas?.drawLinearGradient(gradiente!, start: startPoint, end: endPoint, options: .drawsBeforeStartLocation)
        //  By: RETBOT
     /*
        // Gradiente Radial
        let locationR : [CGFloat] = [0.0,0.5,1.0]
        let coloresR = [UIColor.brown.cgColor, UIColor.purple.cgColor, UIColor.orange.cgColor, UIColor.yellow.cgColor]
        let colorSpaceRadial = CGColorSpaceCreateDeviceRGB()
        
        let gradienteRadial = CGGradient(colorsSpace: colorSpaceRadial, colors: coloresR as CFArray, locations: locationR)
       
        
        var startPointR = CGPoint()
        var endPointR = CGPoint()
        startPointR.x = 100
        startPointR.y = 100
        endPointR.x = 100
        endPointR.y = 100
        
        // Se requieren dos radios
        let radio1 : CGFloat = 90.0
        let radio2 : CGFloat = -50.0
        canvas?.drawRadialGradient(gradienteRadial!, startCenter: startPointR, startRadius: radio1, endCenter: endPointR, endRadius: radio2, options: [])
        */
        // Curvas de bezier
        canvas?.move(to: CGPoint(x: 0, y: 0))
        canvas?.addCurve(to: CGPoint(x: rect.width-10, y: 400), control1: CGPoint(x: 20, y: 200), control2: CGPoint(x: rect.width-50, y: 50))
        canvas?.strokePath()
    }

//  By: RETBOT
}
