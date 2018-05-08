//
//  ViewController.swift
//  My First App
//
//  Created by Adam Ghaleb on 27.04.18.
//  Copyright © 2018 Adam Ghaleb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var seconds = 0.0
    var running = false
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       updateTimeLabel()
    }
    func updateTimeLabel() {
        seconds = (seconds * 10).rounded() / 10
        timeLabel.text = "\(seconds)"
    }
    @objc func countUp() {
        seconds += 0.1
        updateTimeLabel()
    }
    func startTimer() {
        if running {
            return
        }
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(countUp), userInfo: nil, repeats: true)
        running = true
    }
    func stopTimer() {
        timer.invalidate()
        running = false
    }
    func resetTimer() {
        stopTimer()
        seconds = 0.0
        updateTimeLabel()
    }
    @IBAction func buttonHandler(_ sender: UIButton) {
        if let title = sender.titleLabel?.text {
            switch title {
            case "Start":
                startTimer()
            case "Stop":
                stopTimer()
            case "Reset":
                resetTimer()
            default:
                break
            }
        }
    }
    
}

