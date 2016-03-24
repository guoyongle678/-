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
    var opeRator: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose o额外任务也特人生观回复f any resources that can be recreated.
    }
 
    @IBAction func didClicked(sender: UIButton) {
        let value = sender.currentTitle
        if value == "+"||value == "-"||value == "*"||value == "/" {
          opeRator = value
            return
        }
        else if value == "=" {
            var result = 0
            switch opeRator {
                case "+":
                    result = opeRand1.toInt()! + opeRand2.toInt()!
                case "-":
                    result = opeRand1.toInt()! - opeRand2.toInt()!
                case "*":
                    result = opeRand1.toInt()! * opeRand2.toInt()!
                case "/":
                    result = opeRand1.toInt()! / opeRand2.toInt()!
                default:
                        result = 0
    }
            resultLatel.text = "\(result)"
            return
}
        if opeRator == ""  {

            opeRand1 = opeRand1 + value
            resultLabel.text = opeRand1
}
        else {
            
            opeRand2 = opeRand2 + value
            resultLabel.text = opeRand2

            }
    }
}
