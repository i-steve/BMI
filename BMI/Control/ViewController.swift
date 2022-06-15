//
//  ViewController.swift
//  BMI
//
//  Created by Vishnu Priyan on 14/06/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var calculateBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = "FIND YOUR \n BMI  "
    }
    
    var h :Float = 1.5
    var w :Int = 100
    
    //height
    @IBAction func heightChange(_ sender: UISlider) {
        h = Float(String(format: "%.2f", sender.value))!
        heightLabel.text = "\(h)m"
    }
    
    //weight
    @IBAction func weightChange(_ sender: UISlider) {
        w = Int(sender.value)
        weightLabel.text = "\(w)kg"
    }
    
    //BMI
    @IBAction func calculate(_ sender: UIButton) {
        let bmi = bmiCalc(h,w)
        textLabel.text = "Your Result \n \(String(format: "%.1f", bmi))"
    }
    
}

