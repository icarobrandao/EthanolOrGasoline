//
//  ViewController.swift
//  Álcool ou Gasolina
//
//  Created by Ícaro Brandão on 01/01/17.
//  Copyright © 2017 Ícaro Brandão. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    @IBOutlet weak var ethanolTextField: UITextField!
    @IBOutlet weak var gasolineTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calculateButton(_ sender: Any) {
        
        var ethanolPrice: Double
        var eth:Double = 0
        var gasolinePrice: Double
        var gas: Double = 0
        var result: Double
       
        if let ethanol = ethanolTextField.text {
            if ethanol != ""{
                if let ethanolDouble = Double(ethanol){
                    eth = ethanolDouble
                }
            }
        }
        
        if let gasoline = gasolineTextField.text {
            if gasoline != ""{
                if let gasolineDouble = Double(gasoline){
                    gas = gasolineDouble
                }
            }
        }
        ethanolPrice = eth
        gasolinePrice = gas
        result = ethanolPrice/gasolinePrice
        
        if result<0.7 {
            resultLabel.text = "You should use Ethanol!"
        }else {
            resultLabel.text = "You should use Alcohol!"
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

