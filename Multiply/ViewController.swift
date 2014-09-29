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
    @IBOutlet weak var operatorSegmentControl: UISegmentedControl!

    //IBActions
    @IBAction func onCalculateButtonPressed(sender: AnyObject) {

        var getNumber:Int = (numberTextField.text as NSString).integerValue
        var getMultiplier:Int? = multiplierLabel.text?.toInt()
        var answer = getNumber * getMultiplier!
        var divAnswer = getNumber / getMultiplier!


        if answer >= 20 {

            self.view.backgroundColor = UIColor.greenColor()

        } else {

            self.view.backgroundColor = UIColor.whiteColor()
        }

        if operatorSegmentControl.selectedSegmentIndex == 0 {

            answerLabel.text = "\(answer)"

        } else {

            answerLabel.text = "\(divAnswer)"
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

