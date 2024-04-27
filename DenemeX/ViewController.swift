//
//  ViewController.swift
//  DenemeX
//
//  Created by Ömer on 2.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""

    @IBOutlet weak var passLabel2: UITextField!
    @IBOutlet weak var passLabel: UITextField!
    @IBOutlet weak var nameLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func giris(_ sender: Any) {
        
        if nameLabel.text == "" {
            makeAlert(inputTitle: "Hatalı", inputMessage: "İsim gir")
            
        }else if passLabel.text == "" {
            makeAlert(inputTitle: "Hatalı", inputMessage: "Şifre gir")

            
        }else if passLabel.text != passLabel2.text {
            makeAlert(inputTitle: "Hatalı", inputMessage: "Şifre eşleşmiyor")

            
        }else {
            
            userName = nameLabel.text!
            performSegue(withIdentifier: "goTo2", sender: nil)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goTo2" {
            let des = segue.destination as! ViewController2
            des.names = userName
        }
    }
    
    
    
    
    func makeAlert (inputTitle : String , inputMessage : String) {
        let alert = UIAlertController(title: inputTitle , message: inputMessage , preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default)
        
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
    
    
}

