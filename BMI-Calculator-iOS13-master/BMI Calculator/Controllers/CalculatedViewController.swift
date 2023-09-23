//
//  CalculatedViewController.swift
//  BMI Calculator
//
//  Created by ALP on 23.09.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class CalculatedViewController: UIViewController {

    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var textLabelDesc: UILabel!
    
    var bmiValue : Float = 0.0
    var list = myVeriables()
    
  

    
    override func viewDidLoad() {
        super.viewDidLoad()

        backgroundColorControl()
        
        bmiValueLabel.text = String(bmiValue)
    }
    
    @IBAction func actionbuttonReca(_ sender: UIButton) {
       dismiss(animated: true,completion: nil)
    }
    
    func backgroundColorControl(){
        
        if bmiValue >= 25 && bmiValue <= bmiValue {
            view.backgroundColor = UIColor.red
            textLabelDesc.text =  list.descListe[2]
        }
        else if bmiValue >= 19 && bmiValue <= 25 {
            view.backgroundColor = UIColor.orange
            textLabelDesc.text =  list.descListe[0]
        }
        else if bmiValue <= 18.5  {
            view.backgroundColor = UIColor.systemBlue
            textLabelDesc.text = list.descListe[1]
            
        }
        else {
            view.backgroundColor = UIColor.systemBlue
            textLabelDesc.text = list.descListe[0]
        }

    }
 

}
