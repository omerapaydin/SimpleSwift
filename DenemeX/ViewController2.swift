//
//  ViewController2.swift
//  DenemeX
//
//  Created by Ömer on 2.03.2024.
//

import UIKit

class ViewController2: UIViewController {
    
    var timer = Timer()
    var counter = 10
    var names = ""

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel.text = names
        
        imageView.isUserInteractionEnabled = true
        let gest = UITapGestureRecognizer(target: self, action: #selector(reImage))
        imageView.addGestureRecognizer(gest)
        
        timeLabel.text = "Time : \(counter)"
        counter = 10
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeT), userInfo: nil, repeats: true)
        
        
    }
    
    
    
    @objc func timeT(){
        
        timeLabel.text = "Time : \(counter)"
        counter -= 1
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Time is over  !"
        }
        
    }
    
    @objc func reImage(){
        
        imageView.image = UIImage(named: "tony")
        
    }
    

}
