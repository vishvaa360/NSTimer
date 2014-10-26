//
//  ViewController.swift
//  NS Timer
//
//  Created by Vasishtha Patel on 10/26/14.
//  Copyright (c) 2014 Vishva Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       labelCounter.text = String(counter)
    }

    @IBOutlet weak var labelCounter: UILabel!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startcounter(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target:self, selector: Selector("update"), userInfo:nil, repeats:true)
    }
func update() {
    labelCounter.text = String(counter++) 
    }

    @IBAction func stopCounterPressed(sender: AnyObject) {
    timer.invalidate()
    }
    
    @IBAction func clearPressed(sender: AnyObject) {
 timer.invalidate()
        counter = 0
        labelCounter.text = String(counter)
    }
}



