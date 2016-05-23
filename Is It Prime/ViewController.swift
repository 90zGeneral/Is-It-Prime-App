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
        
        if let myNum = Int(numberTextField.text!) {   //check is user input can be converted to an integer and set it equal to myNum
            var isPrime = true
        
            if myNum < 2 {   //numbers lower than 2 are not prime numbers
                isPrime = false
            }else if myNum == 2 {
                isPrime = true
            }else {
                for x in 2...myNum - 1 {   //minus 1 to exclude the user number from the range loop
                
                    if myNum % x == 0 {
                        isPrime = false
                    }
                }
            }
            
            //update the label with a statement based on user input
            if isPrime {
                resultLabel.text = "YES, \(myNum) is a prime number"    //to interpolate the user input into the statement
                numberTextField.text = ""  //clear the text field area after button press
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

