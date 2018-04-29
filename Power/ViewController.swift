//
//  ViewController.swift
//  Power
//
//  Created by azzaz on 3/20/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldEnterNumber: UITextField!
    @IBOutlet weak var textFieldEnterPower: UITextField!
    
    
    @IBOutlet weak var label2ShoeRes: UILabel!
    
    
    @IBAction func computePower(_ sender: Any) {
        
        let num = NSCharacterSet.decimalDigits.inverted
        
        if !(textFieldEnterPower.text?.isEmpty)! &&
            !(textFieldEnterPower.text?.isEmpty)! &&
            (textFieldEnterPower.text?.rangeOfCharacter(from: num) == nil ) &&
            (textFieldEnterNumber.text?.rangeOfCharacter(from: num) == nil)
            
            
        {
            var   res :Double = 1.0000
            
            let base  = (Double)(textFieldEnterNumber.text!)
            var power = (Double)(textFieldEnterPower.text!)
            
            repeat
            {
                res *= base!
                power = power!-1
            }
                while power! > 0.0
            
            
            
            label2ShoeRes.text = (String)(res)
            res = 1
        }
            
        else
        {
            label2ShoeRes.text = "plase enter the 2 text field"
        }
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

