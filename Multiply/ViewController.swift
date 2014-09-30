//
//  ViewController.swift
//  Multiply
//
//  Created by Peter Hitchcock on 9/29/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //IBOutlets
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var multiplierLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var multiplierSlider: UISlider!
    @IBOutlet weak var fizzBuzzLabel: UILabel!
    @IBOutlet weak var operatorSegmentControl: UISegmentedControl!

    //IBActions
    @IBAction func onCalculateButtonPressed(sender: AnyObject) {

        //Vars to setup app
        var getNumber:Int = (numberTextField.text as NSString).integerValue
        var getMultiplier:Int? = multiplierLabel.text?.toInt()!

        var answer = getNumber * getMultiplier!
        var divAnswer = getNumber / getMultiplier!

        //Chanage from multiply to divide
        if operatorSegmentControl.selectedSegmentIndex == 0 {

            answerLabel.text = "\(answer)"

        } else {

            answerLabel.text = "\(divAnswer)"
        }

        //Change background colors
        if answer >= 20 {

            self.view.backgroundColor = UIColor(red: 0.09, green: 0.69, blue: 0.835, alpha: 1.0)

        } else {

            self.view.backgroundColor = UIColor(red: 0.243, green: 0.373, blue: 0.482, alpha: 1.0)
        }

        if (answer % 3 == 0) && (answer % 5 == 0) {

            fizzBuzzLabel.text = "fizzbuzz"
            fizzBuzzLabel.textColor = UIColor.blueColor()

        } else if (answer % 5 == 0) {

            fizzBuzzLabel.text = "buzz"
            fizzBuzzLabel.textColor = UIColor.redColor()

        } else if (answer % 3 == 0) {

            fizzBuzzLabel.text = "fizz"
            fizzBuzzLabel.textColor = UIColor.grayColor()

        } else {

            fizzBuzzLabel.text = "Not fizzbuzz"
        }

        numberTextField.endEditing(true)

        //numberTextField.text = nil

    }

    @IBAction func sliderAction(sender: AnyObject) {

        var fixedValue = (multiplierSlider.value as NSNumber).integerValue

        multiplierLabel.text = "\(fixedValue)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {

        self.view.endEditing(true)
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {

        return UIStatusBarStyle.LightContent
    }

    //Reload
    @IBAction func refreshAction(sender: AnyObject) {

        self.view.backgroundColor = UIColor(red: 0.09, green: 0.69, blue: 0.835, alpha: 1.0)
        numberTextField.text = nil
        operatorSegmentControl.selectedSegmentIndex = 0
        multiplierLabel.text = "\(10)"
        multiplierSlider.value = 10
        answerLabel.text = "The answer is ???"
        fizzBuzzLabel.text = "Is it fizz buzz or fizzbuzz"
    }

}

