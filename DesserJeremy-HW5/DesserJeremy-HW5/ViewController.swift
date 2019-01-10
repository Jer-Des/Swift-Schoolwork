//
//  ViewController.swift
//  DesserJeremy-HW5
//
//  Created by Jeremy Desser on 2/25/16.
//  Copyright © 2016 JDes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var mySearch: UISearchBar!
    @IBOutlet weak var myNavBar: UINavigationBar!
   @IBOutlet weak var collectionView: UICollectionView!
    var imageData: [String] = ["rick.jpeg", "rick2.jpeg"]
    var selectedRow = 0
    
    override func viewDidLoad() {
        var api = "https://api.flickr.com/services/rest/?method=flickr.photos.search"
        api += "&api_key=c95aa512c03526e254af1d3ea45658ef"
        api += "&tags="
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageData.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! CollectionViewCell

        cell.imageView.image = UIImage(named: imageData[indexPath.row])
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "detailSegue" {
            let detailVC = segue.destinationViewController as! imageVC
            detailVC.myText = imageData[selectedRow]
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

