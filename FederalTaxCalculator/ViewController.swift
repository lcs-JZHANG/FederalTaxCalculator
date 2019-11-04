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
        }
        
        guard let yourIncomeAsDouble = Double(yourIncome) else {
            taxOwing.text = "Please Enter Your Income"
            return
            
            
            
        }
        func roundingNumber (number: Double){
        let numberAsIntTimes100 = Int(number * 100)
        let numberAsDoubleTimes100 = Double(numberAsIntTimes100)
        let numberAsDouble = numberAsDoubleTimes100/100
            taxOwing.text = String(numberAsDouble)
        }
            
        switch yourIncomeAsDouble {
            
            case 0...47630:
            let owing = yourIncomeAsDouble * 0.15
            let rateOfTax = owing/yourIncomeAsDouble
            taxOwing.text = "\(yourName), the federal tax owing is \(owing)"
            taxRate.text = "\(yourName), the federal tax rateis \(rateOfTax)"
        
            case 47631...95259:
            let owing = (yourIncomeAsDouble - 47630) * 0.205 + 47630 * 0.15
            let rateOfTax = owing/yourIncomeAsDouble
            taxOwing.text = "\(yourName), the federal tax owing is \(owing)"
            taxRate.text = "\(yourName), the federal tax rateis \(rateOfTax)"
            
            case 95260...147667:
                let owing = (yourIncomeAsDouble - 95260) * 0.26 + (95259 - 47631) * 0.205 + 47630 * 0.15
            let rateOfTax = owing/yourIncomeAsDouble
            taxOwing.text = "\(yourName), the federal tax owing is \(owing)"
            taxRate.text = "\(yourName), the federal tax rateis \(rateOfTax)"
            
            case 147668...210371:
            let owing = (yourIncomeAsDouble - 147668) * 0.29 + (147667 - 95260) * 0.26 + (95259 - 47631) * 0.205 + 47630 * 0.15
            let rateOfTax = owing/yourIncomeAsDouble
            taxOwing.text = "\(yourName), the federal tax owing is \(owing)"
            taxRate.text = "\(yourName), the federal tax rateis \(rateOfTax)"
            
        case 210371...:
                let owing = (yourIncomeAsDouble - 210371) * 0.33 + (210371 - 147668) * 0.29 + (147667 - 95260) * 0.26 + (95259 - 47631) * 0.205 + 47630 * 0.15
            let rateOfTax = owing/yourIncomeAsDouble
            taxOwing.text = "\(yourName), the federal tax owing is \(owing)"
            taxRate.text = "\(yourName), the federal tax rateis \(rateOfTax)"
            
        default:
            taxOwing.text = "Please Enter the right Number"
        }
    
    }
    
    @IBAction func Calculate(_ sender: Any) {
        calculate()
    }
    
    }
    
    
    
    
    
    
    
    
    
    


