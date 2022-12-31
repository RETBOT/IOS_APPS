//
//  Vista4VC.swift
//  appSwiftTabBar1
//
//  Created by Guest User on 06/12/22.
//

import UIKit

class Vista4VC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imgViewFotos: UIImageView!
    
    let imgPicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imgPicker.delegate = self
        
        // Agregar una animacion
        self.imgViewFotos.alpha = 0.0
        
        UIImageView.animate(withDuration: 2){
            self.imgViewFotos.frame = CGRect(x: 0, y: 0, width: 370, height: 460)
            self.imgViewFotos.center = self.view.center
            self.imgViewFotos.alpha = 1.0
            self.imgViewFotos.layer.cornerRadius = 50
        }
    }
    
    @IBAction func btnSeleccionarFotos(_ sender: UIButton) {
        imgPicker.allowsEditing = false
        imgPicker.sourceType = .photoLibrary //.camera
        
        present(imgPicker, animated: true,completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickerImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imgViewFotos.contentMode = .scaleAspectFit
            imgViewFotos.image = pickerImage
        }
        dismiss(animated: true, completion: nil)
    }
    

}
/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
}
*/
