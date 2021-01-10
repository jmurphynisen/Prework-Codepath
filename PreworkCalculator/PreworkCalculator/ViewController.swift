//
//  ViewController.swift
//  PreworkCalculator
//
//  Created by John Murphy on 1/8/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipController: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.25, 0.18, 0.20]
        
        //calculation step
        let tip = bill * tipPercentages[tipController.selectedSegmentIndex]
        let total = tip + bill
        
        //update totals
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

