//
//  ViewController.swift
//  Age of Laika
//
//  Created by Allan Jones on 10/11/14.
//  Copyright (c) 2014 Allan Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var humanYearsTextField: UITextField!
   
    @IBOutlet weak var dogYearsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let humanYears = Double((humanYearsTextField.text as NSString).doubleValue)
        let conversionConstant = 7.0
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(humanYears * conversionConstant)" + " years"
    }

    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        let humanYears = Double((humanYearsTextField.text as NSString).doubleValue)
        dogYearsLabel.hidden = false
        let conversionConstant = 10.5
        if humanYears <= 2.0 {
            dogYearsLabel.text = "\(humanYears * conversionConstant)" + " years"
        }
        else {
            dogYearsLabel.text = "\(2.0 * conversionConstant + (humanYears - 2.0) * 4.0)" + " years"
        }
    }
}

