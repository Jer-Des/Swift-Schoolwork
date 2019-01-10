//
//  viewNotes.swift
//  DesserJeremy-HW4
//
//  Created by Jeremy Desser on 2/18/16.
//  Copyright © 2016 JDes. All rights reserved.
//

import UIKit

class viewNotes: UIViewController {
    @IBOutlet weak var noteLabel: UILabel!
    @IBOutlet weak var viewTitle: UINavigationItem!
    var myText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        noteLabel.text = myText
        title = myText
    }
}
