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
        textLabel.text = "LET'S FIND YOUR \n BMI  "
    }
    
    var bmiCalculator = BMICalculator()
    
    var h :Float = 1.5  //height
    var w :Int = 100    //weight
    
    @IBAction func heightChange(_ sender: UISlider) {
        h = Float(String(format: "%.2f", sender.value))!
        heightLabel.text = "\(h)m"
    }
    
    @IBAction func weightChange(_ sender: UISlider) {
        w = Int(sender.value)
        weightLabel.text = "\(w)kg"
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        bmiCalculator.getValues(h: h, w: w)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            
            let destinationVC = segue.destination as! ResultViewController
        
            destinationVC.value = bmiCalculator.getBMI()
            destinationVC.tip = bmiCalculator.getTip()
            destinationVC.color = bmiCalculator.getColor()
        }
    }
    
}

