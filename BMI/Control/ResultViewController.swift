//
//  ResultViewController.swift
//  BMI
//
//  Created by Span Technology Services on 06/07/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var bmilabel: UILabel!
    @IBOutlet var tipLabel: UILabel!
    
    var value: String?
    var tip: String?
    var color: UIColor?

    override func viewDidLoad() {
        bmilabel.text = value
        tipLabel.text = tip
        view.backgroundColor = color
    }
        
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }

}
















/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
}
*/
