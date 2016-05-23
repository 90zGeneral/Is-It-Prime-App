//
//  ViewController.swift
//  Is It Prime
//
//  Created by Roydon Jeffrey on 5/23/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numberTextField: UITextField!

    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func submit(sender: AnyObject) {
        
        if let myNum = Int(numberTextField.text!) {
            var isPrime = true
        
            if myNum < 2 {
                isPrime = false
            }else if myNum == 2 {
                isPrime = true
            }else {
                for x in 2...myNum - 1 {
                
                    if myNum % x == 0 {
                        isPrime = false
                    }
                }
            }
        
            if isPrime {
                resultLabel.text = "YES, \(myNum) is a prime number"
                numberTextField.text = ""
            }else {
                resultLabel.text = "\(myNum) is NOT a prime number"
                numberTextField.text = ""
            }
        }else if numberTextField.text == "" {
            resultLabel.text = "Please enter a number"
        }else {
            resultLabel.text = "That is NOT a number fool!!!"
            numberTextField.text = ""
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

