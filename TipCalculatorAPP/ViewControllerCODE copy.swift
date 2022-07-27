//
//  ViewController.swift
//  PreWork
//
//  Created by Miriam Rizvi on 7/26/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from text field from the user's input
        let bill = Double(billAmountTextField.text!) ?? 0;
        
        //Get the Total tip by multiplying tip * tipPercentage
        let tipPercentage = [0.15, 0.18, 0.20];
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex];
        let total = bill + tip;
        
        //Update the Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip);
        
        //Update the Total Amount
        totalLabel.text = String(format: "$%.2f", total);
    }
}

