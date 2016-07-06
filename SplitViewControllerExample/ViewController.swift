//
//  ViewController.swift
//  SplitViewControllerExample
//
//  Created by Kamil Burczyk on 06.07.2016.
//  Copyright © 2016 Grand Parade. All rights reserved.
//

import UIKit

class ViewController: UISplitViewController, UISplitViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.preferredDisplayMode = .AllVisible
    }
    
}

