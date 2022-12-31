//
//  ViewController.swift
//  appSwiftJuegosIOs
//
//  Created by Usuario invitado on 24/11/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

    @IBOutlet weak var pickerViewNumero: UIPickerView!
    
    @IBOutlet weak var lblIntentos: UILabel!
    @IBOutlet weak var lblMsg: UILabel!
    @IBOutlet weak var lblMsg2: UILabel!
    @IBOutlet weak var lblnivel: UILabel!
    @IBOutlet weak var lblPuntuacion: UILabel!
    @IBOutlet weak var btnVerificar: UIButton!
    
    
    var numRandom = 0
    var intentos = 0
    var puntuacion = 0
    var nivel = 1
    var numeroSeleccionado = 0
    
    var lvlValores = ["0"]
    
    func lvlNum () {
        for valor in 1...100 {
            lvlValores.insert(String(valor), at: valor)
        }
    }
    
    func inicializar (){
        lvlNum()
        numRandom = Int.random(in: 0...9)
        intentos = 3
        lblIntentos.text = String(intentos)
        lvlMsg()
        print(String(numRandom)) //- -------
        //let color = UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 1.0)
        //self.view.backgroundColor = color
        self.view.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        btnVerificar.isEnabled = true
        lblnivel.text = String(nivel)
    }
    
    func numRandomsLvl(){
        switch (puntuacion) {
        case 0...10:
            numRandom = Int.random(in: 0...9)
            break;
        case 0...20:
            numRandom = Int.random(in: 0...20)
            break;
        case 0...30:
            numRandom = Int.random(in: 0...30)
            break;
        case 0...40:
            numRandom = Int.random(in: 0...40)
            break;
        case 0...50:
            numRandom = Int.random(in: 0...50)
            break;
        case 0...60:
            numRandom = Int.random(in: 0...60)
            break;
        case 0...70:
            numRandom = Int.random(in: 0...70)
            break;
        case 0...80:
            numRandom = Int.random(in: 0...80)
            break;
        case 0...90:
            numRandom = Int.random(in: 0...90)
            break;
        case 0...:
            numRandom = Int.random(in: 0...100)
            break;
        default:
            numRandom = Int.random(in: 0...9)
        }
    }
    
    func alerta(){
        let alerta = UIAlertController(title: "Mensaje", message: "Intentalo otra vez", preferredStyle: .alert)
        
        let juegarOtraVez = UIAlertAction(title: "Aceptar", style: .default)
        
        alerta.addAction(juegarOtraVez)
        self.present(alerta, animated: true, completion: nil)
    }
    
    func lvl(){
        switch (puntuacion) {
        case 0...10:
            nivel = 0
            break;
        case 0...20:
            nivel = 1
            break;
        case 0...30:
            nivel = 2
            break;
        case 0...40:
            nivel = 3
            break;
        case 0...50:
            nivel = 4
            break;
        case 0...60:
            nivel = 5
            break;
        case 0...70:
            nivel = 6
            break;
        case 0...80:
            nivel = 7
            break;
        case 0...90:
            nivel = 8
            break;
        case 0...100:
            nivel = 9
            break;
        case 100...:
            nivel = 10
            break;
        default:
            nivel = 0
        }
       
        lblnivel.text = String(nivel);
    }
    
    
    func lvlMsg(){
        switch (puntuacion) {
        case 0...10:
            lblMsg.text = "Selecciona un numero de 0-9"
            break;
        case 0...20:
            lblMsg.text = "Selecciona un numero de 0-20"
            break;
        case 0...30:
            lblMsg.text = "Selecciona un numero de 0-30"
            break;
        case 0...40:
            lblMsg.text = "Selecciona un numero de 0-40"
            break;
        case 0...50:
            lblMsg.text = "Selecciona un numero de 0-50"
            break;
        case 0...60:
            lblMsg.text = "Selecciona un numero de 0-60"
            break;
        case 0...70:
            lblMsg.text = "Selecciona un numero de 0-70"
            break;
        case 0...80:
            lblMsg.text = "Selecciona un numero de 0-80"
            break;
        case 0...90:
            lblMsg.text = "Selecciona un numero de 0-90"
            break;
        case 90...:
            lblMsg.text = "Selecciona un numero de 0-100"
            break;
        default:
            lblMsg.text = "Selecciona un numero de 0-9"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        inicializar ()
        pickerViewNumero.delegate = self
        pickerViewNumero.dataSource = self
    }


    @IBAction func btnVerificar(_ sender: UIButton) {
        lvlMsg()
            if numeroSeleccionado == numRandom {
                self.view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
                puntuacion += 20
                lblPuntuacion.text = String(puntuacion)
                lvl()
                numRandomsLvl()
                lblMsg2.text = "Lo encontraste, continua con el siguiente numero 🤯"
                lvlMsg()
                print(String(numRandom)) //- -------// ----------
                
            } else {
                if intentos == 1 {
                    lblMsg2.text = "Fallaste, el numero correcto es \(numRandom)"
                    self.view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
                    alerta()
                    puntuacion -= 10
                    btnVerificar.isEnabled = false
                    lblPuntuacion.text = String(puntuacion)
                    lvlMsg()
                } else {
                    intentos -= 1
                    lblIntentos.text = String(intentos)
                
                    if numeroSeleccionado > numRandom {
                        lblMsg2.text = "Vuelve a Intentarlo, el numero ingresado es mayor"
                    }else if numeroSeleccionado <   numRandom {
                        lblMsg2.text = "Vuelve a Intentarlo, el numero ingresado es menor"
                }
                    lvlMsg()
            }
          lvl()
        }
    }

    @IBAction func btnOtro(_ sender: UIButton) {
        inicializar ()
    }
    
    @IBAction func btnAdios(_ sender: UIButton) {
        UIControl().sendAction(#selector(NSXPCConnection.suspend),to: UIApplication.shared, for: nil)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return lvlValores.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return lvlValores[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let numSelec = lvlValores[pickerView.selectedRow(inComponent: 0)]
        numeroSeleccionado = Int(numSelec)!
        
    }
}

