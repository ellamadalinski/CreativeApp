//
//  ViewController.swift
//  CreativeApp
//
//  Created by ELLA MADALINSKI on 9/1/21.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
    
    
    
    @IBOutlet weak var firstNumberTextFieldOutlet: UITextField!
    
    @IBOutlet weak var secondNumberTextFieldOutlet: UITextField!
    
    @IBOutlet weak var outcomeLabelOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        firstNumberTextFieldOutlet.delegate = self
        secondNumberTextFieldOutlet.delegate = self
    }


    @IBAction func addButtonAction(_ sender: UIButton) {
        let firstNumText = firstNumberTextFieldOutlet.text!
        let secondNumText = secondNumberTextFieldOutlet.text!
        
        
        if let numOne = Int(firstNumText)
        {
            if let numTwo = Int(secondNumText)
            {
                outcomeLabelOutlet.text = "\(numOne + numTwo)"
            }
            else{
                outcomeLabelOutlet.text = "ERROR-NUM2"
            }
        }
        else{
            outcomeLabelOutlet.text = "ERROR-NUM1"
        }
        
    }
    
    
    @IBAction func multiplyButtonAction(_ sender: UIButton) {
        
        let firstNumText = firstNumberTextFieldOutlet.text!
        let secondNumText = secondNumberTextFieldOutlet.text!
        
        if let numOne = Int(firstNumText)
        {
            if let numTwo = Int(secondNumText)
            {
                outcomeLabelOutlet.text = "\(numOne*numTwo)"
            }
            else{
                outcomeLabelOutlet.text = "ERROR-NUM2"
            }
        }
        else{
            outcomeLabelOutlet.text = "ERROR-NUM1"
        }
    }
    
    
    
    @IBAction func theoremButtonOutlet(_ sender: UIButton) {
        
        let firstNumText = firstNumberTextFieldOutlet.text!
        let secondNumText = secondNumberTextFieldOutlet.text!
        
        if let numOne = Int(firstNumText)
        {
            if let numTwo = Int(secondNumText)
            {
                let before = (numOne*numOne)+(numTwo*numTwo)
                
                outcomeLabelOutlet.text = "\(sqrt(Double(before)))"
            }
            else{
                outcomeLabelOutlet.text = "ERROR-NUM2"
            }
        }
        else{
            outcomeLabelOutlet.text = "ERROR-NUM1"
        }
        
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            firstNumberTextFieldOutlet.resignFirstResponder()
            secondNumberTextFieldOutlet.resignFirstResponder()
            return true
        }
    }
    
    
    
    
    
}

