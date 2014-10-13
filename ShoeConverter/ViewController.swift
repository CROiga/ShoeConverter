//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Igor Majer on 24.9.2014..
//  Copyright (c) 2014. ADproduction. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mansShoeSizeTextField: UITextField!
    @IBOutlet weak var mansConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = mansShoeSizeTextField.text.toInt()! // .toINT()! converts STRING to INTEGER
        let conversionConstant = 30
        var euMansShoeSize = sizeFromTextField + conversionConstant
        mansConvertedShoeSizeLabel.hidden = false
        mansConvertedShoeSizeLabel.textColor = UIColor.blueColor()
        mansConvertedShoeSizeLabel.text = "\(euMansShoeSize)" + " in EU size" // "\()" converts INTEGER to STRING
        mansShoeSizeTextField.resignFirstResponder() //odjebaje tipkovnicu nakon unosa
        
        
 //        let sizeFromTextField = mansShoeSizeTextField.text // let sizeFromTextField = mansShoeSizeTextField.text.toInt()!
//        var integerFromTextField = sizeFromTextField.toInt()!
//        let conversionConstant = 30
//        integerFromTextField += conversionConstant //integerFromTF + conversionConstant
//        mansConvertedShoeSizeLabel.hidden = false
//        let stringWithUpdatedShoeSize = "\(integerFromTextField)" + " in European Shoe Size"
//        mansConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
    }

    @IBAction func convertWomensShoeButtonPressed(sender: UIButton) {
        
        //let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue) //converts STRING to DOUBLE
        let sizeFromTextField = (womensShoeSizeTextField.text as NSString).doubleValue //converts STRING to DOUBLE
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.textColor = UIColor.redColor()
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in EU size" // calculation inside DOUBLE to STRING ()
        womensShoeSizeTextField.resignFirstResponder()
        
        
        
        
    }
}

