//
//  ViewController.swift
//  FederalTaxCalculator
//
//  Created by Jesse Zhang on 2019-11-03.
//  Copyright © 2019 Jesse Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var income: UITextField!
    
    @IBOutlet weak var taxOwing: UILabel!
    
    @IBOutlet weak var taxRate: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    func calculate() {
        guard let yourName = name.text else {
            taxOwing.text = "Please Enter Your Name"
            return
        }
        
        guard let yourIncome = income.text else {
            taxOwing.text = "Please Enter Your Income"
            return
            
        guard let yourIncomeAsDouble = Double(yourIncome) else {
            taxOwing.text = "Please Enter Your Income"
            return
            
            
        }
        func roundingNumber (number: Double){
        let numberAsIntTimes100 = Int(number * 100)
        let numberAsDoubleTimes100 = Double(numberAsIntTimes100)
        let numberAsDouble = numberAsDoubleTimes100/100
            
        switch yourIncomeAsDouble {
            
            case 0...47630:
            let owing = roundingNumber(number: yourIncomeAsDouble)
            let rateOfTax = roundingNumber(number: yourIncomeAsDouble)
            taxOwing.text = "\(yourName), the federal tax owing is \(owing)"
        
            case 47631...95259:
            let owing = roundingNumber(number: yourIncomeAsDouble)
            let rateOfTax = roundingNumber(number: yourIncomeAsDouble)
            taxOwing.text = "\(yourName), the federal tax owing is \(owing)"
            
            case 95260...147667:
            let owing = roundingNumber(number: yourIncomeAsDouble)
            let rateOfTax = roundingNumber(number: yourIncomeAsDouble)
            taxOwing.text = "\(yourName), the federal tax owing is \(owing)"
            
            case 147668...210371:
            let owing = roundingNumber(number: yourIncomeAsDouble)
            let rateOfTax = roundingNumber(number: yourIncomeAsDouble)
            taxOwing.text = "\(yourName), the federal tax owing is \(owing)"
            
        default:
            taxOwing.text = "Please Enter the right Number"
        }
    
    }
    
    
    }
    
    
    
    
    
    
    
    
    
    
}

}
