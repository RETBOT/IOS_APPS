//
//  ViewController.swift
//  appSwiftStackViewSonidos
//
//  Created by Usuario invitado on 01/12/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer : AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSonidos(_ sender: UIButton) {
        let instrumento = sender.tag
        
        switch instrumento {
        case 1:
            let pathSound = Bundle.main.path(forResource: "guitarra", ofType: "wav")!
            let url = URL(fileURLWithPath: pathSound)
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {
                print("NO SE ENCONTRO EL ARCHIVO")
            }
            break
        case 2:
            let pathSound = Bundle.main.path(forResource: "teclado", ofType: "wav")!
            let url = URL(fileURLWithPath: pathSound)
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {
                print("NO SE ENCONTRO EL ARCHIVO")
            }
            break
        case 3:
            let pathSound = Bundle.main.path(forResource: "Bateria", ofType: "wav")!
            let url = URL(fileURLWithPath: pathSound)
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {
                print("NO SE ENCONTRO EL ARCHIVO")
            }
            break
        case 4:
            let pathSound = Bundle.main.path(forResource: "aplauso", ofType: "wav")!
            let url = URL(fileURLWithPath: pathSound)
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {
                print("NO SE ENCONTRO EL ARCHIVO")
            }
            break
        default:
            return
        }
    }
    
    @IBAction func btnDetener(_ sender: UIButton) {
    }
    
}

