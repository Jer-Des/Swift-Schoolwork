//
//  ViewController.swift
//  cs3200hw2
//
//  Created by Jeremy Desser on 1/27/16.
//  Copyright © 2016 JDes. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var textFieldView: UITextField!
    @IBOutlet weak var buttonView: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    
    
    let pickerDataSource = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
    
    let textCellIndentifier = "TextCell"
    var tableData = [[String]] (count:7, repeatedValue: [])
    
    //picker functions
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return pickerDataSource.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
     return pickerDataSource[row]
    }
    
    //table functions
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func buttonClick(sender: UIButton){
        
    }

}

