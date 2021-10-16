//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by New Account on 10/15/21.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var firstValue : UITextField!
    @IBOutlet weak var secondValue : UITextField!

    @IBOutlet weak var result : UILabel!

    @IBOutlet weak var add : UIButton!
    @IBOutlet weak var subtract : UIButton!
    @IBOutlet weak var multiply : UIButton!
    @IBOutlet weak var divide : UIButton!
   
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func actionButton(let action : String){
            let val1 : Double?  = Double(firstValue.text!)
            let val2 : Double? = Double(secondValue.text!)
            var resultVal: Double = 0;
        switch action{
            case "ADD":
                resultVal = val1! + val2!
            case "SUB":
                resultVal = val1! - val2!
            case "DIVIDE":
                resultVal = val1! / val2!
            case "MULTIPLY":
                resultVal = val1! * val2!
            default:
                resultVal
        }
            result.text = String(resultVal)
        
    }

    @IBAction func addValue(){
        actionButton(let: "ADD")
    }
    
    @IBAction func subValue(){
        actionButton(let: "SUB")
    }

    @IBAction func multValue(){
        actionButton(let: "MULTIPLY")
    }
    
    @IBAction func divideValue(){
        actionButton(let: "DIVIDE")
    }
}

