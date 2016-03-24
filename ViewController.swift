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
    
    var operand1: String = ""
    var operand2: String = ""
    var operator: String = ""
    
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
          operator = value
            return
        }
        else if value == "=" {
            var result = 0
            switch operator {
                case "+":
                    result = operand1.toInt()! + operand2.toInt()!
                case "-":
                    result = operand1.toInt()! - operand2.toInt()!
                case "*":
                    result = operand1.toInt()! * operand2.toInt()!
                case "/":
                    result = operand1.toInt()! / operand2.toInt()!
                default:
                        result = 0
    }
            resultLatel.text = "\(result)"
            return
}
        if operator == ""  {

            operand1 = operand1 + value
            resultLabel.text = operand1
}
        else {
            
            operand2 = operand2 + value
            resultLabel.text = operand2

            }
    }
}
