//
//  FlickrPhoto.swift
//  DesserJeremy_HW5
//
//  Created by Jeremy Desser on 2/26/16.
//  Copyright © 2016 JDes. All rights reserved.
//

import Foundation

class FlickrPhoto {
    
    var id = ""
    var owner = ""
    var secret = ""
    var server = ""
    var farm = ""
    
    var photoURL: String {
        get {
            return "https://farm\(farm).staticflickr.com/\(server)/\(id)_\(secret).jpg"
        }
    }
}