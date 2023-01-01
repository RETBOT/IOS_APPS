//
//  ViewController.swift
//  appPicker1
//
//  Created by Guest User on 25/11/22.
//
//  By: RETBOT
import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var txtCarro1: UITextField!
    @IBOutlet weak var pickerViewCarros: UIPickerView!
    
    let carroColor = [["VW", "Ford", "Toyota", "Nissan", "Toyota", "Triciclos Apache", "Peugot"], ["Azul🐬", "Verde🥑", "Amarillo🍋", "Rojo🐙", "Negro🖤"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //let pickerView1 = UIPickerView()
        pickerViewCarros.delegate = self
        pickerViewCarros.dataSource = self
        //txtCarro1.inputView = pickerViewCarros
    }
    //  By: RETBOT
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return carroColor[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.carroColor[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let carro = carroColor[0][pickerView.selectedRow(inComponent: 0)]
        let color = carroColor[1][pickerView.selectedRow(inComponent: 1)]
        txtCarro1.text = carro + " " + color;
    }


}//  By: RETBOT

