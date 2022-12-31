//
//  ViewController.swift
//  appSwiftConjuntosIOs
//
//  Created by Usuario invitado on 22/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtConjuntoA: UITextField!
    @IBOutlet weak var txtConjuntoB: UITextField!
    @IBOutlet weak var segmentoConjunto: UISegmentedControl!
    @IBOutlet weak var lblResultado: UILabel!
    
    @IBOutlet weak var btnCalcularOutlet: UIButton!
    var conjuntoA:Set<String> = []
    var conjuntoB:Set<String> = []
    var opc: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func segmentedAction(_ sender: UISegmentedControl) {
        let indice : Int = sender.selectedSegmentIndex
        
        opc = indice
    }
    
    
    @IBAction func txtConjuntoAAction(_ sender: UITextField) {
        txtConjuntoA.becomeFirstResponder()
        
        if !txtConjuntoA.text!.isEmpty && !txtConjuntoB.text!.isEmpty   {
            btnCalcularOutlet.isEnabled = true
        }
        else {
            btnCalcularOutlet.isEnabled = false
        }
        
     }
    
    @IBAction func txtConjuntoBAction(_ sender: UITextField) {
        txtConjuntoB.becomeFirstResponder()
        
        if !txtConjuntoA.text!.isEmpty && !txtConjuntoB.text!.isEmpty  {
            btnCalcularOutlet.isEnabled = true
        }
        else {
            btnCalcularOutlet.isEnabled = false
        }
    }
    
    @IBAction func btnCalcular(_ sender: UIButton) {
        
        let strA = txtConjuntoA.text
        let strB = txtConjuntoB.text
        // numeros enteros INT
       // conjuntoA = deStringAConjunto(conjunto: conjuntoA, cadena: strA!)
        //conjuntoB = deStringAConjunto(conjunto: conjuntoB, cadena: strB!)
        // cadenas de texto STRING
        conjuntoA = deStringAConjuntoStr(conjunto: conjuntoA, cadena: strA!)
         conjuntoB = deStringAConjuntoStr(conjunto: conjuntoB, cadena: strB!)
        
        switch(opc){
        case 0: // Union
            let unionAB = conjuntoA.union(conjuntoB).sorted()
            let resultado = unionAB
            lblResultado.text =  "A:\(conjuntoA) U B:\(conjuntoB) =  \(resultado.joined(separator: ","))"
            break;
        case 1:
            let interseccionAB = conjuntoA.intersection(conjuntoB).sorted()
            let resultado = interseccionAB
            lblResultado.text = "A:\(conjuntoA) ⋂ B:\(conjuntoB) = \(resultado.joined(separator: ","))"
            break;
        case 2:
            let diferenciaAB = conjuntoA.subtracting(conjuntoB).sorted()
            let resultado = diferenciaAB
            lblResultado.text = "A:\(conjuntoA) - B:\(conjuntoB) = \(resultado.joined(separator: ","))"
            break;
        case 3:
            let diferenciaSimetricaAB = conjuntoA.symmetricDifference(conjuntoB).sorted()
            let resultado = diferenciaSimetricaAB
            lblResultado.text = "A: \(conjuntoA.sorted()) △ B:\(conjuntoB) = \(resultado.joined(separator: ","))"
            break;
        default:
            lblResultado.text = "A: \(conjuntoA.sorted()), B: \(conjuntoB.sorted())"
        }
        
        
    }

    func deStringAConjunto(conjunto:Set<Int>, cadena: String) -> Set<Int>{
        var conjuntoAux:Set<Int> = []
        var indice = 0
        var num: String = ""
        for caracter in cadena {
            indice += 1
            if caracter >= "0" && caracter <= "9" {
                num += String(caracter)
                
                if indice == (cadena.count){
                    conjuntoAux.insert(Int(num)!)
                    num = ""
                }
                
            }else if caracter == "," {
                conjuntoAux.insert(Int(num)!)
                num = ""
                
            }else if indice == (cadena.count) - 1 {
                conjuntoAux.insert(Int(num)!)
                num = ""
            }
        }
        return conjuntoAux
    }
    func deStringAConjuntoStr(conjunto:Set<String>, cadena: String) -> Set<String>{
        var conjuntoAux:Set<String> = []
        var indice = 0
        var num: String = ""
        for caracter in cadena {
            indice += 1
            if caracter != "," {
            num += String(caracter)
            
            if indice == (cadena.count){
                conjuntoAux.insert(num)
                num = ""
            }
                
            }else if caracter == "," {
                conjuntoAux.insert(num)
                num = ""
                
            }
        }
        conjuntoAux.remove(" ")
        return conjuntoAux
    }
}

/*
 var indice = 0
 var num: String = ""
 for caracter in strA! {
     indice += 1
     if caracter >= "0" && caracter <= "9" {
         num += String(caracter)
         
         if indice == (strA?.count)!{
             conjuntoA.insert(Int(num)!)
             num = ""
         }
         
     }else if caracter == "," {
         conjuntoA.insert(Int(num)!)
         num = ""
         
     }else if indice == (strA?.count)! - 1 {
         conjuntoA.insert(Int(num)!)
         num = ""
     }
 }
 */
