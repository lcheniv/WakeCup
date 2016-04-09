//
//  friends.swift
//  Wake Up Final
//
//  Created by Lawrence Chen on 2/7/16.
//  Copyright © 2016 Lawrence Chen. All rights reserved.
//

import UIKit

class friends: UIViewController, UITableViewDataSource{
    
    let buddies = [
        ("James Jackson","Best"),
        ("Lawrence Chen","Best"),
        ("Forrest Whittaker","Best"),
        ("Jajuan Brooksfield", "Best")
    ]
    override func viewDidLoad() {
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return buddies.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var (time, date) = buddies[indexPath.row]
        cell.textLabel?.text = time
        return cell
    }
    
}
