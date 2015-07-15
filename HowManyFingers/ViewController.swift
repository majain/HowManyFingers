//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Jain, Mohit on 7/15/15.
//  Copyright © 2015 Mohit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessTextField: UITextField!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func guessAction(sender: AnyObject) {
       
        let computedAnswer = arc4random_uniform(6)
        
        let guessedAnswer = Int(guessTextField.text!)
        
        if (guessedAnswer != nil) {
        
            if guessedAnswer == Int(computedAnswer) {
                self.answerLabel.text = "Your guess is correct"
            }
            else {
                self.answerLabel.text = "Your guess is incorrect"
            }
        }
        else {
            self.answerLabel.text = "Please enter number between 1-5";
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

