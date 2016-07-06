//
//  RightVC.swift
//  SplitViewControllerExample
//
//  Created by Kamil Burczyk on 06.07.2016.
//  Copyright © 2016 Grand Parade. All rights reserved.
//

import UIKit

class RightVC : UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = "Detail \(indexPath.row) \(arc4random()%100)"
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "DetailSegue" {
            let title = (sender as? UITableViewCell)?.textLabel?.text ?? "Details"
            segue.destinationViewController.title = title
        }
    }
    
}
