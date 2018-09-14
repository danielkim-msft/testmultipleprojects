//
//  ViewController.swift
//  test
//
//  Created by Daniel Kim on 8/27/18.
//  Copyright © 2018 Daniel Kim. All rights reserved.
//

import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

class ViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var invalid: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func helloWorld(_ sender: UIButton) {
        MSAnalytics.trackEvent("Hello event")
        lblTitle.text = "Hello World"
    }
    @IBAction func goodbyeWorld(_ sender: Any) {
        MSAnalytics.trackEvent("Goodbye event")
        lblTitle.text = "Goodbye World"
        invalid.text = "insert intentional crash";
    }
}

