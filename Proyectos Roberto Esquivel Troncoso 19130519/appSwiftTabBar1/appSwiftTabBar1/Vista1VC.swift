//
//  ViewController.swift
//  appSwiftTabBar1
//
//  Created by Guest User on 06/12/22.
////  By: RETBOT

import UIKit

class Vista1VC: UIViewController {

  
    var num : Int = 0
    var num2 : Int = 0
    var resultado:Int = 0
    var resuString = ""
    
    @IBOutlet weak var labelNumero: UILabel!
    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var segmento: UISegmentedControl!
    @IBOutlet weak var texto1: UITextField!
    
    @IBOutlet weak var txtOperacion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelNumero.text = String(slider1.value);
    }
//  By: RETBOT
    @IBAction func slider1Action(_ sender: UISlider) {
        labelNumero.text = "\(String(describing: lround(Double(sender.value))))"
        stepper1.value = Double(sender.value)
        self.segmentedAction(segmento)
    }
    
    @IBAction func stepper1Action(_ sender: UIStepper) {

        labelNumero.text = "\(String(describing: lround(Double(sender.value))))"
        slider1.value = Float(Double(sender.value))
        self.segmentedAction(segmento)
    }
    @IBAction func segmentedAction(_ sender: UISegmentedControl) {
        let indice : Int = sender.selectedSegmentIndex
        let num = Int(labelNumero.text!)
        
        if indice == 0 {
            
            if num! >= 0 {
                let n = String(num!, radix: 2)
                texto1.text = n
            }else if num! < 0 {
                let n = 256 - (-1 * num!)
                texto1.text = String(n, radix: 2)
            }
        }
        else if indice == 1 {
            if num! >= 0 {
                let n = String(num!, radix: 8)
                texto1.text = n
            } else if num! < 0 {
                let n = 256 - (-1 * num!)
                texto1.text = String(n, radix: 8)
            }
           //  By: RETBOT
        }
        else if indice == 2 {
            let n = String(num!, radix: 16).uppercased()
            texto1.text = n
        }
    }
    
    @IBAction func btnSuma(_ sender: UIButton) {
        //num = Int(String(labelNumero.text!))!
        if num == 0 {
            num = Int(String(labelNumero.text!))!
            resuString += String(num)
        }
        else{
            num2 = Int(String(labelNumero.text!))!
            resultado += CMatematicas.Sumar(n1: num, n2: num2)
            
            resuString += " + " + String(num2)
        }
        txtOperacion.text = resuString
    }
    
    
    @IBAction func btnResta(_ sender: UIButton) {
        if num == 0 {
            num = Int(String(labelNumero.text!))!
            
            resuString += String(num)
        }
        else{
            num2 = Int(String(labelNumero.text!))!
            resultado += CMatematicas.Resta(n1: num, n2: num2)
            resuString += " - " + String(num2)
        }
        txtOperacion.text = resuString
    }//  By: RETBOT
    
    @IBAction func btnDiv(_ sender: UIButton) {
        if num == 0 {
            num = Int(String(labelNumero.text!))!
            
            resuString += String(num)
        }
        else{
            num2 = Int(String(labelNumero.text!))!
            resultado += CMatematicas.Div(n1: num, n2: num2)
            
            resuString += " / " + String(num2)
        }
        txtOperacion.text = resuString
    }
    
    
    @IBAction func btnMulti(_ sender: UIButton) {
        if num == 0 {
            num = Int(String(labelNumero.text!))!
            resuString += String(num)
        }
        else{
            num2 = Int(String(labelNumero.text!))!
            resultado += CMatematicas.Multi(n1: num, n2: num2)
            
            resuString += " * " + String(num2)
        }
        txtOperacion.text = resuString
    }
    //  By: RETBOT
    
    @IBAction func btnModulo(_ sender: UIButton) {
        if num == 0 {
            num = Int(String(labelNumero.text!))!
            
            resuString += String(num)
            
        }
        else{
            num2 = Int(String(labelNumero.text!))!
            resultado += CMatematicas.Mod(n1: num, n2: num2)
            
            resuString += " % " + String(num2)
            
        }
        txtOperacion.text = resuString
    }
    
    @IBAction func btnIgual(_ sender: UIButton) {
        resuString += " = " + String(resultado)
        labelNumero.text = String(resultado)
        txtOperacion.text = resuString
        resuString = ""
    }
}

//  By: RETBOT
