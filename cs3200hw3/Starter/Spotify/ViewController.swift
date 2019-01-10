//
//  ViewController.swift
//  Spotify
//
//  Created by Brad Richardson on 1/29/16.
//  Copyright © 2016 USU. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var tableData = [SpotifyTrack]()
    var player : AVPlayer!
    @IBOutlet weak var tableView: UITableView!

}

class customCellView: UITableViewCell{
    @IBOutlet weak var imageview:UIImageView!
    
    var image: UIImage = UIImage(named:  SpotifyTrack.init(itemJSON: [String : SpotifyTrack.artUrl]))!
    var spotifyTrack: SpotifyTrack?{
        didSet{
        
        }
    }
    
}

extension ViewController: UISearchBarDelegate {
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {            SpotifyManager.search(searchText) {
            (tracks) in
            dispatch_async(dispatch_get_main_queue()) {
                self.tableData = tracks
                self.tableView.reloadData()
            }
        }
    }
}


extension ViewController: UITableViewDataSource {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = tableData[indexPath.row].title
        cell.detailTextLabel?.text = tableData[indexPath.row].artist
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let url = NSURL(string: tableData[indexPath.row].previewUrl)
        player = AVPlayer(URL: url!)
        player.play()
    }
}


