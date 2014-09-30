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

            self.view.backgroundColor = UIColor.greenColor()

        } else {

            self.view.backgroundColor = UIColor.whiteColor()
        }

        if (answer % 3 == 0) {

            self.fizzBuzzLabel.text = "fizz"

        } else if (answer % 5 == 0) {

            self.fizzBuzzLabel.text = "buzz"

        } else if (answer % 3 == 0) && (answer % 5 == 0) {

            self.fizzBuzzLabel.text = "fizzbuzz"

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


}

