//
//  ViewController.swift
//  tippy
//
//  Created by Fredy Pedro on 1/16/20.
//  Copyright © 2020 Fredy Pedro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the Bill amount
        let bill = Double(billField.text!) ?? 0
        
        //Calculate the Tip and Total
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the Tip and Total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

