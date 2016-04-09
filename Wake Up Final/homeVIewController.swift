//
//  homeVIewController.swift
//  Wake Up Final
//
//  Created by Lawrence Chen on 2/7/16.
//  Copyright © 2016 Lawrence Chen. All rights reserved.
//

import UIKit

class homeVIewController: UIViewController {

    @IBOutlet var clock: UILabel!
   
    func showtime(){
        let date = NSDate()
        let calander = NSCalendar.currentCalendar()
        let compenents = calander.components([ .Hour, .Minute, .Second], fromDate: date)
        let hour = compenents.hour
        let minutes = compenents.minute;
        
        let time = String(hour) + ":" + String(minutes)
        clock.text = time
    }
    
    var myTimer: NSTimer? = nil
    override func viewDidLoad() {
        var timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("showtime"), userInfo: nil, repeats: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
