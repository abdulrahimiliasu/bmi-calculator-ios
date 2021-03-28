//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Abdulraheem Iliasu on 8/17/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi:BMI?
    
    func getBMI() -> String {
        let roundedBMi = String(format: "%.2f", bmi?.value ?? 0.0)
        return roundedBMi
    }
    func getAdvice() -> String {
        let advicetext = bmi?.advice ?? "no advice"
        return advicetext
    }
    func getColor() -> UIColor {
        let color = bmi?.color ?? UIColor.gray
        return color
    }
    
    mutating func calculateBMI(height:Float,weight:Float) {
        let bmivalue = weight/(height*height)
        if bmivalue < 18.5{
            bmi =  BMI(value: bmivalue, advice: "Eat More Pies", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }else if bmivalue < 24.9{
            bmi =  BMI(value: bmivalue, advice: "You're like me", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }else{
            bmi =  BMI(value: bmivalue, advice: "Eat Fewer Pies", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        }
    }
}
