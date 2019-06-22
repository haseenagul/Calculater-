//
//  ViewController.swift
//  Calculater Layout
//
//  Created by Haseena Gul on 14/01/2019.
//  Copyright © 2019 lecture. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var calculationLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - IBOutlet for UI.
    
    @IBOutlet weak var divitionButtonIB: UIButton!
    
    
    @IBOutlet weak var multiplicationButtonIB: UIButton!
    

    @IBOutlet weak var subtractionButtonIB: UIButton!
    
    
    @IBOutlet weak var additionButtonIB: UIButton!
    
    
    @IBOutlet weak var button1IB: UIButton!
    
    
    @IBOutlet weak var button2IB: UIButton!
    
    @IBOutlet weak var button3IB: UIButton!
    
    
    
    @IBOutlet weak var button4IB: UIButton!
    
    
    @IBOutlet weak var button5IB: UIButton!
    
    
    @IBOutlet weak var button6IB: UIButton!
    
    
    @IBOutlet weak var button7IB: UIButton!
    
    
    @IBOutlet weak var button8IB: UIButton!
    
    
    @IBOutlet weak var button9IB: UIButton!
    
    
    @IBOutlet weak var acbuttonIB: UIButton!
    
    
    @IBOutlet weak var addSubbuttonIB: UIButton!
    
    
    
    @IBOutlet weak var percentagebuttonIB: UIButton!
    
    
    @IBOutlet weak var zerobuttonIB: UIButton!
    
    @IBOutlet weak var dotbuttonIB: UIButton!
    
    
    @IBOutlet weak var equalbuttonIB: UIButton!
    
    // Varaible here :
    var startOperation = true
    var operation = "+"
    var numbers:Double?
    var results:Double?
    
    
    //Take number to input
    func numberToInput (number: String){
        var buttonNumber = String(calculationLabel.text!)
        if startOperation {
             buttonNumber = ""
            startOperation = false
        }
        buttonNumber = buttonNumber + number
        calculationLabel.text = buttonNumber
            
            
        }
        
        
        
        
    
    
    
    
    
    //MARK:- pre- Linked button Number
    
    @IBAction func button1(_ sender: Any) {
        button1IB.showsTouchWhenHighlighted = true
        numberToInput(number: "1")
        
    }
    
    @IBAction func button2(_ sender: Any) {
        button2IB.showsTouchWhenHighlighted = true
        numberToInput(number: "2")
    }
    

    @IBAction func button3(_ sender: Any) {
        button3IB.showsTouchWhenHighlighted = true
        numberToInput(number: "3")
    }
    
    @IBAction func button4(_ sender: Any) {
        button4IB.showsTouchWhenHighlighted = true
        numberToInput(number: "4")
    }
    
    @IBAction func button5(_ sender: Any) {
        button5IB.showsTouchWhenHighlighted = true
        numberToInput(number: "5")
    }
    
    
    
    @IBAction func button6(_ sender: Any) {
        button6IB.showsTouchWhenHighlighted = true
        numberToInput(number: "6")
    }
    
    
    
    
    @IBAction func button7(_ sender: Any) {
        button7IB.showsTouchWhenHighlighted = true
        numberToInput(number: "7")
    }
    
    
    
    @IBAction func button8(_ sender: Any) {
        button8IB.showsTouchWhenHighlighted = true
        numberToInput(number: "8")
    }
    
    
    @IBAction func button9(_ sender: Any) {
        button9IB.showsTouchWhenHighlighted = true
        numberToInput(number: "9")
    }
    
    
    
    
    
    //MARK: -  pre - Linked operation button
    
    
    @IBAction func buttonAC(_ sender: Any) {
        acbuttonIB.showsTouchWhenHighlighted = true
        calculationLabel.text = "0"
        startOperation = true
    }
    
    
    
    @IBAction func buttonplusMinus(_ sender: Any) {
        addSubbuttonIB.showsTouchWhenHighlighted = true
        var textNumber = String( calculationLabel.text!)
        textNumber = "-" + textNumber
        calculationLabel.text = textNumber
    }
    
    
    
    
    @IBAction func buttonPercentage(_ sender: Any) {
        percentagebuttonIB.showsTouchWhenHighlighted = true
        
        var numberPercent = Double( calculationLabel.text!)
        
        numberPercent = numberPercent!/100.0
        calculationLabel.text = String(numberPercent!)
        startOperation = true
        
    }
    

    
    
    
    @IBAction func buttonDivision(_ sender: Any) {
        operation = "/"
        divitionButtonIB.showsTouchWhenHighlighted = true
        divitionButtonIB.backgroundColor = .cyan
        numbers = Double(calculationLabel.text!)
        startOperation = true
        
    }
    
    
    @IBAction func buttonMultiplication(_ sender: Any) {
        operation = "*"
        multiplicationButtonIB.showsTouchWhenHighlighted = true
        multiplicationButtonIB.backgroundColor = .cyan
        numbers = Double(calculationLabel.text!)
        startOperation = true
    }
    
    
    @IBAction func buttonMinus(_ sender: Any) {
        operation = "-"
        subtractionButtonIB.showsTouchWhenHighlighted = true
        subtractionButtonIB.backgroundColor = .cyan
        numbers = Double(calculationLabel.text!)
        startOperation = true
    }
    
    @IBAction func buttonPlus(_ sender: Any) {
        operation = "+"
        additionButtonIB.showsTouchWhenHighlighted = true
        additionButtonIB.backgroundColor = .cyan
        numbers = Double(calculationLabel.text!)
        startOperation = true
    }
    
    @IBAction func buttonEqual(_ sender: Any) {
        equalbuttonIB.backgroundColor = .orange
        
        let numberEqual = Double(calculationLabel.text!)
        
        switch operation {
        case "*":
            results = numbers! * numberEqual!
        case "/":
            results = numbers! / numberEqual!
        case "-":
            results = numbers! - numberEqual!
        case "+":
            results = numbers! + numberEqual!
        default:
            results = 0.0
        }
        calculationLabel.text = String( results!)
        divitionButtonIB.backgroundColor = .orange
        multiplicationButtonIB.backgroundColor = .orange
        subtractionButtonIB.backgroundColor = .orange
        additionButtonIB.backgroundColor = .orange
        startOperation = true
    }
    
    
    @IBAction func buttonDot(_ sender: Any) {
        operation = "."
        dotbuttonIB.showsTouchWhenHighlighted = true
        numbers = Double(calculationLabel.text!)
        startOperation = true
    }
    
    
    @IBAction func buttonZero(_ sender: Any) {
        zerobuttonIB.showsTouchWhenHighlighted = true
        
        numberToInput(number: "0")
        
    }
    
    
}

