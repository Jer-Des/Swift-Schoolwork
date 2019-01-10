//
//  ViewController.swift
//  DesserJeremy-HW4
//
//  Created by Jeremy Desser on 2/17/16.
//  Copyright © 2016 JDes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var notes = [String]()
    var noteTitles = [String]()
    var selectedRow = 0
    
    @IBOutlet var tableView: UITableView!
    @IBAction func cancelToViewController(segue:UIStoryboardSegue) {
    }
    
    @IBAction func saveToDetail(segue:UIStoryboardSegue) {

    }

   
    

    @IBAction func unwindToMainMenu(sender: UIStoryboardSegue) {

    let sourceVC = sender.sourceViewController as! NewNote
    guard let noteTitle = sourceVC.noteTitle.text,
    let noteText = sourceVC.noteText.text
        else{
    return
    }
        if !noteText.isEmpty && !noteTitle.isEmpty {
            noteTitles.append(noteTitle)
            notes.append(noteText)
            tableView.reloadData()
        }
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "viewNotesSegue" {
            let destVC = segue.destinationViewController as! viewNotes
            // destVC.viewTitle = noteTitles[selectedRow]
            // destVC.noteLabel = notes[selectedRow]
        }
    }
}


extension ViewController: UITableViewDataSource {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = notes[indexPath.row]
        
        return cell
    }
}
extension ViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        selectedRow = indexPath.row
        performSegueWithIdentifier("viewNotesSegue", sender: self)
    }
}

