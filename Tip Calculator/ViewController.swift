//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Shafer Hess on 1/14/20.
//  Copyright © 2020 Shafer Hess. All rights reserved.
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
        // Get Bill Amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate Tip and Total
        let tipPercentages = [0.15, 0.18, 0.20]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the Tip and Total Labels
        tipLabel.text = String(format: "%0.2f", tip)
        totalLabel.text = String(format: "%0.2f", total)
    }
}
