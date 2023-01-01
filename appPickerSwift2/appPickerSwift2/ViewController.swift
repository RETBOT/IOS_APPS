//
//  ViewController.swift
//  appPickerSwift2
//
//  Created by Guest User on 25/11/22.
//
//  By: RETBOT
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto1: UITextField!
    let carros = ["VW", "Ford", "Honda", "Triciclos Apache", "Peugot", "Toyota"]
    
    var carroSelecionado : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        crearPickerViewCarros();
        crearToolBar();
    }
    
    func crearPickerViewCarros(){
        let carrosPicker = UIPickerView()
        carrosPicker.delegate = self
        texto1.inputView = carrosPicker
    }
    //  By: RETBOT
    func crearToolBar(){
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        toolBar.barTintColor = .magenta
        toolBar.tintColor = .black
        let botonOcular = UIBarButtonItem(title: "⬇⬇⬇", style: .plain, target: self, action: #selector(ViewController.dismissKeyboard))
        toolBar.setItems([botonOcular], animated: false)
        toolBar.isUserInteractionEnabled = true
        texto1.inputAccessoryView = toolBar
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    //Fin viewController
}
//  By: RETBOT
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return carros.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return carros[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        carroSelecionado = carros[row]
        texto1.backgroundColor = UIColor.red
        texto1.text = carroSelecionado
    }
    
    //Tarea domingo 27: juego completo utilizando las opciones vistas en clase para el pickerview
}

//  By: RETBOT
