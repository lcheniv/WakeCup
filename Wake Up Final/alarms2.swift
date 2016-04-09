//
//  alarms2.swift
//  Wake Up Final
//
//  Created by Lawrence Chen on 2/7/16.
//  Copyright © 2016 Lawrence Chen. All rights reserved.
//

import UIKit

class alarms2: UIViewController, UITableViewDataSource{

    let alarmsclocks = [
        ("7:30 am","Monday"),
        ("10:00 am","friday"),
        ("11:15 am","tuesday"),
        ("9:30 am", "saturday")
    ]
    override func viewDidLoad() {
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alarmsclocks.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var (time, date) = alarmsclocks[indexPath.row]
        cell.textLabel?.text = time
        return cell
    }
}
