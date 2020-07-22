//
//  ViewController.swift
//  tipcalc
//
//  Created by Sathya Sri Pasham on 7/21/20.
//  Copyright © 2020 Sathya Sri Pasham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billText: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("hello")
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
      
    
        let  bill=Double(billText.text!) ?? 0
        
        let tipPer = [0.1 , 0.2 , 0.3]
        let tip = bill * tipPer[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text=String(format: "$%f", tip)
        totalLabel.text="$\(total)"
   
}

}
