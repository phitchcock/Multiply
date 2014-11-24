//
//  ViewController.swift
//  Multiply
//
//  Created by Peter Hitchcock on 9/29/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: - Variables and IBOutlets
    var getNumber:Int!
    var getMultiplier:Int!
    var answer:Int!
    var divAnswer:Int!

    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var multiplierLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var multiplierSlider: UISlider!
    @IBOutlet weak var fizzBuzzLabel: UILabel!
    @IBOutlet weak var operatorSegmentControl: UISegmentedControl!
    @IBOutlet weak var calculateButton: UIButton!

    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        numberTextField.layer.cornerRadius = 8
        calculateButton.layer.borderColor = UIColor(red: 0.424, green: 0.51, blue: 0.682, alpha: 1).CGColor
        calculateButton.layer.borderWidth = 1
        calculateButton.layer.cornerRadius = 8
        answerLabel.layer.cornerRadius = 8
        fizzBuzzLabel.layer.cornerRadius = 8

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //MARK: - IBActions
    @IBAction func onCalculateButtonPressed(sender: UIButton) {
        getNumber = (numberTextField.text as NSString).integerValue
        getMultiplier = multiplierLabel.text?.toInt()!

        answer = getNumber * getMultiplier
        divAnswer = getNumber / getMultiplier

        //Chanage from multiply to divide
        if operatorSegmentControl.selectedSegmentIndex == 0 {
            answerLabel.text = "\(answer)"
        } else {
            answerLabel.text = "\(divAnswer)"
        }

        //FizzBuzz
        if (answer % 3 == 0) && (answer % 5 == 0) {
            fizzBuzzLabel.text = "fizz buzz"
            fizzBuzzLabel.textColor = UIColor.blueColor()
        } else if (answer % 5 == 0) {
            fizzBuzzLabel.text = "buzz"
            fizzBuzzLabel.textColor = UIColor.redColor()
        } else if (answer % 3 == 0) {
            fizzBuzzLabel.text = "fizz"
            fizzBuzzLabel.textColor = UIColor.grayColor()
        } else {
            fizzBuzzLabel.text = "Try again"
        }
        numberTextField.endEditing(true)
    }

    @IBAction func sliderAction(sender: UISlider) {
        var fixedValue = (multiplierSlider.value as NSNumber).integerValue
        multiplierLabel.text = "\(fixedValue)"
    }

    @IBAction func refreshAction(sender: UINavigationItem) {
        numberTextField.text = ""
        operatorSegmentControl.selectedSegmentIndex = 0
        multiplierLabel.text = "\(10)"
        multiplierSlider.value = 10
        answerLabel.text = "Answer"
        fizzBuzzLabel.text = "Fizz buzz or fizzbuzz"
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        view.endEditing(true)
    }
}

