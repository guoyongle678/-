//
//  ViewController.swift
//  计算机
//
//  Created by 乐乐 on 16/3/21.
//  Copyright © 2016年 乐乐. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var opeRand1: String = ""
    var opeRand2: String = ""
    var opeRand3: String = ""
    
    var isDao:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
    }
 
    @IBAction func didClicked(sender: UIButton) {
        var value = sender.currentTitle
        print(value)
        if value == "+"||value == "-"||value == "*"||value == "/" {
            opeRand3 = value!
            isDao = false
            return
        }
        else if value == "=" {
            var result = 0.0
            switch opeRand3{
            case "+":
                    result = Double(opeRand1)! + Double(opeRand2)!
            case "-":
                    result = Double(opeRand1)! - Double(opeRand2)!
            case "*":
                    result = Double(opeRand1)! * Double(opeRand2)!
            case "/":
                    result = Double(opeRand1)! / Double(opeRand2)!
            default:
                result = 0
                }
            resultLabel.text = "\(result)"
            return
            }
        else if value == "AC"{
            value = "0"
            opeRand1 = ""
            opeRand2 = ""
            opeRand3 = ""
            resultLabel.text = ""
            return
        }else if value == "."{
            if !isDao {
                opeRand1 = opeRand1 + value!
                resultLabel.text = opeRand1
                isDao = true

            }
            
        }else{
            if opeRand3 == ""  {

                opeRand1 = opeRand1 + value!
                resultLabel.text = opeRand1
            }
            else {
                opeRand2 = opeRand2 + value!
                resultLabel.text = opeRand2

            }
        }
    }

}




