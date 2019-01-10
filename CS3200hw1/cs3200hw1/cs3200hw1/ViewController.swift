//
//  ViewController.swift
//  cs3200hw1
//
//  Created by Jeremy Desser on 1/27/16.
//  Copyright © 2016 JDes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!

    @IBOutlet weak var redB: UIButton!
   
    @IBOutlet weak var blueB: UIButton!
    
    @IBOutlet weak var greenB: UIButton!
    
    @IBOutlet weak var purpleB: UIButton!
    
    @IBOutlet weak var randomB: UIButton!
    
    @IBOutlet weak var orangeB: UIButton!
    
    @IBOutlet weak var changeB: UIButton!
    
    @IBAction func redPress(sender: UIButton){
        myLabel.textColor = UIColor.redColor();
    }
    @IBAction func bluePress(sender: UIButton){
        myLabel.textColor = UIColor.blueColor();
    }
    @IBAction func greenPress(sender: UIButton){
        myLabel.textColor = UIColor.greenColor();
    }
    @IBAction func purplePress(sender: UIButton){
        myLabel.textColor = UIColor.purpleColor();
    }
    @IBAction func orangePress(sender: UIButton){
        myLabel.textColor = UIColor.orangeColor();
    }
    
    @IBAction func textChange(sender: UIButton){
        if myLabel.text == "Looking Good Today!"{
     myLabel.text = "Not looking so good..."
        }
        else if myLabel.text == "Not looking so good..."{
        myLabel.text = "Looking Good Today!"
        }
    }
    
    @IBAction func randomPress(sender: UIButton){
        let textColor = arc4random_uniform(9)+1;
        switch textColor{
        case 1:
            myLabel.textColor = UIColor.redColor();
        case 2:
            myLabel.textColor = UIColor.blueColor();
        case 3:
            myLabel.textColor = UIColor.orangeColor();
        case 4:
            myLabel.textColor = UIColor.purpleColor();
        case 5:
            myLabel.textColor = UIColor.brownColor();
        case 6:
            myLabel.textColor = UIColor.greenColor();
        case 7:
            myLabel.textColor = UIColor.cyanColor();
        case 8:
            myLabel.textColor = UIColor.whiteColor();
        case 9:
            myLabel.textColor = UIColor.lightGrayColor();
            
        default:
            myLabel.textColor = UIColor.blackColor();
        };
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

