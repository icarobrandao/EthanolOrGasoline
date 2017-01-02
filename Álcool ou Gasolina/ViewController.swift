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
        var result: Double = 0
       // pega o que tem em ethanolTextfield e põe em uma variavel e depois verifica se a mesma é vazia depois à transforma em um double e coloca
        
        if let ethanol = ethanolTextField.text {
            if let gasoline = gasolineTextField.text {
                if ethanol != "" && gasoline != ""{
                    if let ethanolDouble = Double(ethanol){
                        if let gasolineDouble = Double(gasoline){
                            result = ethanolDouble / gasolineDouble
                        }
                    }
                }
            }
        }
        
        if result>=0.7 {
            resultLabel.text = "You should use Gasoline!"
        }else {
            resultLabel.text = "You should use Ethanol!"
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

