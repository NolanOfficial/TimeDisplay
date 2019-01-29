//
//  ViewController.swift
//  TimeDisplay
//
//  Created by Nolan Fuchs on 1/29/19.
//  Copyright © 2019 Nolan Fuchs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateAndTimeDownload: UILabel!
    @IBOutlet weak var losAngelesDownload: UILabel!
    @IBOutlet weak var chicagoDownload: UILabel!
    @IBOutlet weak var newYorkDownload: UILabel!
    
    
    var timer = Timer()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addTimer()
    }

    func addTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.date), userInfo: nil, repeats: true)
    }
    
    // Date & Time
    @objc func date() {
        
        let currentDateTime = Date()
        let losAngelesDateTime = currentDateTime.addingTimeInterval(-3600)
        let chicagoDateTime = currentDateTime.addingTimeInterval(3600)
        let newYorkDateTime = currentDateTime.addingTimeInterval(7200)
        
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .medium
        
        dateAndTimeDownload.text = formatter.string(from: currentDateTime)
         losAngelesDownload.text = formatter.string(from: losAngelesDateTime)
        chicagoDownload.text = formatter.string(from: chicagoDateTime)
         newYorkDownload.text = formatter.string(from: newYorkDateTime)
        
    }
    

}

