//
//  ViewController.swift
//  TimeAndDate
//
//  Created by Gabriel Martinez on 2017-11-14.
//  Copyright © 2017 Gabriel Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateTimer()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func updateTimer(){
            let timeFormatter = DateFormatter()
            let dateFormatter = DateFormatter()
        
        timeFormatter.timeStyle = .medium
        dateFormatter.dateStyle = .medium
        
        timeLabel.text = timeFormatter.string(from: NSDate() as Date)
        dateLabel.text = dateFormatter.string(from: NSDate() as Date)
    }
    

}

