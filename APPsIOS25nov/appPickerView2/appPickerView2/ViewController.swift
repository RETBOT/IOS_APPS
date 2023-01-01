//
//  ViewController.swift
//  appPickerView2
//
//  Created by Usuario invitado on 25/11/22.//  By: RETBOT
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        crearPickerViewCarros()
        crearToolBar()
    }

    func crearPickerViewCarros()
    {
        let carrosPicker = UIPickerView()
        carrosPicker.delegate = self
        texto1.inputView = carrosPicker
    }
// Metodo para la toolbar
    func crearToolBar(){
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        toolBar.barTintColor = .green
        toolBar.tintColor = .orange
        let botonOcultar = UIBarButtonItem(title: "⬇️⬇️⬇️", style: .plain, target: self, action: #selector(ViewController.dismissKeyboard))
        //  By: RETBOT
        toolBar.setItems([botonOcultar], animated: false)
        toolBar.isUserInteractionEnabled = true
        texto1.inputAccessoryView = toolBar
    }
    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }
    @IBOutlet weak var texto1: UITextField!
    let carros1 =  ["VW","Ford","Toyota","Honda","Peugot","Mazda"]
    
    var carroSeleccionado : String?
} // FIN VIEW CONTROLLER

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //  By: RETBOT
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return carros1.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return carros1[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        carroSeleccionado = carros1[row]
        texto1.backgroundColor = UIColor.red
        texto1.text = carroSeleccionado
    }
    
    /*
     TAREA PARA EL DOMINGO 27 :
     JUEGO COMPLETO UTILIZANDO LAS OPCIONES VISTAS EN
     CLASE PARA EL PICKERVIEW
     */
}// FIN DE LA EXTENSION

//  By: RETBOT
