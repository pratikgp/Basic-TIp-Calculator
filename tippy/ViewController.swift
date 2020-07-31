//
//  ViewController.swift
//  tippy
//
//  Created by Pratik Patel on 7/31/20.
//  Copyright © 2020 Pratik Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    
    
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amount
        let bill = Double(billField.text!) ?? 0
        //Calculate the tip amount
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

