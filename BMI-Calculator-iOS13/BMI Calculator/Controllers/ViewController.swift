//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightChange(_ sender: UISlider) {
        height.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightChange(_ sender: UISlider) {
        weight.text = String(format: "%.0f", sender.value) + "kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let weight = weightSlider.value
        let height = heightSlider.value
        
        let BMI = weight / pow(height, 2)
        print(BMI)
    }
    
}

