//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by cheikh ahmadou bamba deme  on 10/08/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiResultLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    @IBOutlet weak var resultBackground: UIImageView!
    
    var bmiResult: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bmiResultLabel.text = String(format: "%.1f", bmiResult?.value ?? 0.0)
        adviceLabel.text = bmiResult?.advice
        resultBackground.backgroundColor = bmiResult?.color
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
