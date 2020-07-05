//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Paul Lueng on 6/10/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//
import UIKit
struct CalculatorBrain{
    
    var bmi : BMI?
    
    mutating func calculateBMI(height:Float, weight: Float) {
        let bmiValue = weight/(height * height)
        
        if(bmiValue < 18.5 ){
            bmi = BMI(value: bmiValue, advice: "Eat More Pies" , color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if(bmiValue < 24.9){
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!" , color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
        
        
    }
    
    func getBMIValue()-> String{
        let bmiTo1DecimalPlace = String(format:"%.1f",bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace;
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
}
