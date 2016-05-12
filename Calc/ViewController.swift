//
//  ViewController.swift
//  Calc
//
//  Created by Michael Selby on 5/12/16.
//  Copyright © 2016 Michael Selby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var peopleField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var personLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(sender: AnyObject) {
        
        let tipPercentage = [0.05, 0.1, 0.25]
        let people = Double(peopleField.text!) ?? 0
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentage [tipControl.selectedSegmentIndex]
        let total = bill + tip
        let person = total / people
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        personLabel.text = String(format: "$%.2f", person)


    }
}

