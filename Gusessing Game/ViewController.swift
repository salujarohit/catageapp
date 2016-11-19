//
//  ViewController.swift
//  Gusessing Game
//
//  Created by Rohit Saluja on 11/18/16.
//  Copyright © 2016 Rohit Saluja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userGuess: UITextField!
    
    
    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func guess(sender: AnyObject) {
        
        let diceRoll = String(arc4random_uniform(11))
        
        if diceRoll == " "
        {
            result.text = "Enter a Value"
        }
        
        else if diceRoll == userGuess.text
        {
            result.text = "You are Right"
        }
        else
        {
           result.text = " Wrong, the number was " + diceRoll
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

