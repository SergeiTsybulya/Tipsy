//
//  ViewController.swift
//  Tipsy
//
//  Created by Сергей on 24.01.2022.
//  Copyright © 2022 STDevelopment. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    @IBAction func tipChanged(_ sender: UIButton) {
        updButtons()
        sender.isSelected = true
    }
    func updButtons(){
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = Int(sender.value).description
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        if zeroPctButton.isSelected{
            print(0)
        } else if tenPctButton.isSelected{
            print(0.1)
        } else {
            print (0.2)
        }
    }
    
    
}

