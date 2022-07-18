//
//  BMI Calculator.swift
//  BMI
//
//  Created by Vishnu Priyan on 15/06/22.
//

import Foundation
import UIKit

struct BMICalculator{
    
    var bmi: BMI?
    
    mutating func getValues(h:Float,w:Int){
        
        let bmiValue = Float(w)/(h*h)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, tip: " Eat more!  ", color: UIColor(red: 1, green: 200/255, blue: 0, alpha: 1))
        }else if bmiValue < 24.5{
            bmi = BMI(value: bmiValue, tip: " Fit Enough!  ", color: UIColor(red: 51/255, green: 201/255, blue: 51/255, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, tip: " Avoid Fatty Food!  ", color: UIColor(red: 1, green: 51/255, blue: 51/255, alpha: 1))
        }
    }
    
    func getBMI() -> String{
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    
    func getTip() -> String{
        return bmi?.tip ?? "No Tip"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }

}
