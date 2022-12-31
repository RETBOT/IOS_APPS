//
//  ViewController.swift
//  appPicker1
//
//  Created by Usuario invitado on 25/11/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate , UIPickerViewDataSource{
    
    let carroColor = [["VW","Ford","Toyota","Honda","Peugot"],["Azul 🚙","Rojo 🚗", "Verde 🔫"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
  //      let pickerView = UIPickerView()
   //     pickerView.delegate = self
        pickerView1.dataSource = self
        pickerView1.delegate = self
        //texto1.inputView = pickerView
      //  texto1.inputView = pickerView1
    }
    @IBOutlet weak var texto1: UITextField!
    
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
        
        texto1.text = carro + " " + color
    }
    
    @IBOutlet weak var pickerView1: UIPickerView!
}

