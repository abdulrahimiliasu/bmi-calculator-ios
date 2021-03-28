//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Abdulraheem Iliasu on 8/17/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue:Float = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
     
        let label = UILabel()
        label.text = String(format: "%.2f", bmiValue)
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
    
}
