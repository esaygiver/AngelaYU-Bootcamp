//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by admin on 8.10.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
        
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Yemen lazım!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            print("underweight")
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Dewamke", color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
            print("normalweight")
        } else {
            bmi = BMI(value: bmiValue, advice: "Çare Diyet :(", color: #colorLiteral(red: 0.59486413, green: 0.1198764816, blue: 0.1052159443, alpha: 1))
            print("overweight")
        }
        
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice."
         
    }
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
