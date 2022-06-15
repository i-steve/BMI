//
//  BMI Calculator.swift
//  BMI
//
//  Created by Vishnu Priyan on 15/06/22.
//

import Foundation

    var bmi: Float!

    func calc(_ h:Float, _ w:Int) -> Float{
        bmi = Float(w)/(h*h)       // BMI is weight divided by square of height
        return bmi
    }
    
    //tips
    func messeage() -> String{
        if bmi <= 18.5{
            return "Add more carbs"
        }else if bmi <= 25{
            return "Maintain same Diet"
        }else if bmi <= 30{
            return "Cut some carbs"
        }else{
            return "Cut most carbs"
        }
    }
    

