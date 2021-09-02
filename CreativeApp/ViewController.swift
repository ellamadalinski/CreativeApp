//
//  ViewController.swift
//  CreativeApp
//
//  Created by ELLA MADALINSKI on 9/1/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNumberTextFieldOutlet: UITextField!
    
    @IBOutlet weak var secondNumberTextFieldOutlet: UITextField!
    
    @IBOutlet weak var outcomeLabelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addButtonAction(_ sender: UIButton) {
        var firstNumText = firstNumberTextFieldOutlet.text!
        if let one = Int(firstNumText) {
           
        }
        else{
            outcomeLabelOutlet.text = "ERROR"
        }
        
    }
    
    
    
}

