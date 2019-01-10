//
//  ViewController.swift
//  DesserJeremy_HW5
//
//  Created by Jeremy Desser on 2/26/16.
//  Copyright © 2016 JDes. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,UISearchBarDelegate {
    
    @IBOutlet weak var mysearch: UISearchBar!
    var imageData: [String] = ["rick.jpeg", "rick2.jpeg", "rick.jpeg", "rick2.jpeg", "rick.jpeg", "rick2.jpeg"]
    var selectedRow = 0
    var selectedImage = String()
    var searchString: String!
let reuseIdentifier = "cells"
    
    //Collection view functions
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageData.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CollectionViewCell
        cell.myImage.image = UIImage(named: imageData[indexPath.row])
        

        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
         print("Selected cell: \(indexPath.row)")
       return selectedRow = indexPath.row
        
    }
    
    //segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "detailSegue" {
            let detailVC = segue.destinationViewController as! imageVC
            
            detailVC.myText = imageData[selectedRow]
        }
    }
    //search functions
     func Search(query: String) {

        guard let escapedQuery = query.stringByAddingPercentEncodingWithAllowedCharacters(.URLHostAllowedCharacterSet()),
            let url = NSURL(string: searchString + escapedQuery)
            else {
                return
        }
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) {
            (data, response, error) in
            if error != nil {
                print("error fetching data")
                return
            }
            
            var json: [String: AnyObject]
            do  {
                json = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers) as! [String: AnyObject]
            } catch {
                return
            }
            
            
        }
        task.resume()
    }
    
    
    override func viewDidLoad() {
        var api = "https://api.flickr.com/services/rest/?method=flickr.photos.search"
        api += "&api_key=c95aa512c03526e254af1d3ea45658ef"
        api += "&tags="
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    


           func searchBarTextDidEndEditing(searchBar: UISearchBar) {
               print(searchBar.text!)
           }
        
          func searchBarSearchButtonClicked(searchBar: UISearchBar) {
               print(searchBar.text!)
                searchBar.resignFirstResponder()
           }
        
        func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {

            Search(searchText)
        }
}


