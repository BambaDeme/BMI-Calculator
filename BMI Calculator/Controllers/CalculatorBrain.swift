//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by cheikh ahmadou bamba deme  on 10/08/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        
        let bmiValue = weight / (height*height)
        
        if bmiValue < 18.5 {
            
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .blue)
            
        } else if bmiValue < 24.9 {
            
            bmi = BMI(value: bmiValue, advice: "Fit as fiddled", color: .green)
            
        } else {
           bmi = BMI(value: bmiValue, advice: "Eat less pies", color: .red)
        }
        
        //BMI = weight / (height*height)
        
    }
    
    func getBMIValue() -> Float {
        return bmi?.value ?? 0;
    }
}
