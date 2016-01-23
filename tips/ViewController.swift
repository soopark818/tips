//
//  ViewController.swift
//  tips
//
//  Created by Soohyun Park on 1/16/16.
//  Copyright © 2016 SoohyunPark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //@IBOutlet var firstView: UIView!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!

    @IBOutlet weak var totaltwoLabel: UILabel!
    
    @IBOutlet weak var totalthreeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        totaltwoLabel.text = "$0.00"
        totalthreeLabel.text = "$0.00"
        
        
        let bottomColor = UIColor(red:(255/255.0), green: (224/255.0), blue: (167/255.0), alpha: 100)
    
        let topColor = UIColor(red:(239/255.0), green: (5/255.0), blue: (90/255.0), alpha: 100)
        
        
        let gradientColors: [CGColor] = [topColor.CGColor, bottomColor.CGColor]
        let gradientLocations: [Float] = [0.0, 1.0]
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations
        
    
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, atIndex: 0)
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        
        var billAmount = NSString(string: billField.text!).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        var totaltwo = total/2
        var totalthree = total/3
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        totaltwoLabel.text = String(format:"$%.2f", totaltwo)
        totalthreeLabel.text = String(format:"$%.2f", totalthree)
        
        
       
        //Optionally initialize the property to a desired starting value
        //self.firstView.alpha = 0
        //self.secondView.alpha = 1
        //UIView.animateWithDuration(0.4, animations: {
            // This causes first view to fade in and second view to fade out
          //  self.firstView.alpha = 1
            //self.secondView.alpha = 0
        //})
        
        
        
    }

    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }
  
  
}

