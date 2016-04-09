//
//  alarms.swift
//  Wake Up Final
//
//  Created by Lawrence Chen on 2/7/16.
//  Copyright © 2016 Lawrence Chen. All rights reserved.
//

import UIKit

class alarms: UITableViewController {

    let alarmsclocks = [
        ("7:30","Monday"),
        ("10:00","friday"),
        ("11:15","tuesday"),
        ("9:30", "saturday")
        ]
    override func viewDidLoad() {
    
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return alarmsclocks.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var (time, date) = alarmsclocks[indexPath.row]
        cell.textLabel?.text = time
        return cell
    }
}
