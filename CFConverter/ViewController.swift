//
//  ViewController.swift
//  CFConverter
//
//  Created by Hongsun Yoon, M.D. on 11/1/14.
//  Copyright (c) 2014 Hongsun Yoon, M.D. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celciusValue: UITextField!
    @IBOutlet weak var convertedFahrenheit: UILabel!
    @IBOutlet weak var decoTextOne: UILabel!
    @IBOutlet weak var fahrenheitValue: UITextField!
    @IBOutlet weak var convertedCelcius: UILabel!
    @IBOutlet weak var decoTextTwo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToFahrenheit(sender: UIButton) {

        let celciusValueString = celciusValue.text
        let celciusValueDouble = Double((celciusValueString as NSString).doubleValue)
        let calculatedFahrenheit = (celciusValueDouble * 9) / 5 + 32
        convertedFahrenheit.hidden = false
        convertedFahrenheit.text = "\(calculatedFahrenheit)"
        
        decoTextOne.hidden = false
        decoTextOne.text = "When " + "\(celciusValueString)" + " C is converted to F value..."
        
    }
    
    @IBAction func convertToCelcius(sender: UIButton) {
        
        let fahrenheitValueString = fahrenheitValue.text
        let fahrenheitValueDouble = Double((fahrenheitValueString as NSString).doubleValue)
        let calculatedCelcius = (fahrenheitValueDouble - 32) * 5 / 9
        convertedCelcius.hidden = false
        convertedCelcius.text = "\(calculatedCelcius)"
        
        decoTextTwo.hidden = false
        decoTextTwo.text = "When " + "\(fahrenheitValueString)" + " F is converted to C value..."
    }
    

}

