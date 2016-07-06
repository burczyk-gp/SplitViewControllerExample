//
//  MasterVC.swift
//  SplitViewControllerExample
//
//  Created by Kamil Burczyk on 06.07.2016.
//  Copyright © 2016 Grand Parade. All rights reserved.
//

import UIKit

class MasterVC: UITableViewController {

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = "Master \(indexPath.row)"
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("RightVC")
        vc.title = "Right VC/\(indexPath.row)"
        self.splitViewController?.showDetailViewController(vc, sender: self)
    }
    
}
