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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
    }
 
    @IBAction func didClicked(sender: UIButton) {
        let value = sender.currentTitle
        if value == "+"||value == "-"||value == "*"||value == "/" {
          opeRand3 = value!
            return
        }
        else if value == "=" {
            var result = 0
            switch opeRand3{
            case "+":
                    result = Int(opeRand1)! + Int(opeRand2)!
            case "-":
                    result = Int(opeRand1)! - Int(opeRand2)!
            case "*":
                    result = Int(opeRand1)! * Int(opeRand2)!
            case "/":
                    result = Int(opeRand1)! / Int(opeRand2)!
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
        }
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




