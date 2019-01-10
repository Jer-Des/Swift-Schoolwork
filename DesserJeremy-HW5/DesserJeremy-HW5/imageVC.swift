//
//  imageVC.swift
//  DesserJeremy-HW5
//
//  Created by Jeremy Desser on 2/25/16.
//  Copyright © 2016 JDes. All rights reserved.
//

import UIKit

class imageVC: UIViewController {
    @IBOutlet weak var myTitle: UINavigationBar!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    var myText: String!
    
    override func viewDidLoad() {
        myImage.image = UIImage(named: "\(myText)")
        super.viewDidLoad()
        myLabel.text = myText
        title = myText
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
