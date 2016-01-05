//
//  ViewController.swift
//  TreatHunger
//
//  Created by Shivam Roy on 02/01/16.
//  Copyright (c) 2016 TreahHunger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Navigation Bar Customization
        
        self.view.backgroundColor = UIColor.orangeColor()
        
        navigationController!.navigationBar.barTintColor = UIColor.blackColor()
        
       
        navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.orangeColor()]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    // Call Button Action
    
    @IBAction func CallButtonPressed(sender: AnyObject) {
        callNumber("8120577776")
       }

    private func callNumber(phoneNumber:String) {
        if let phoneCallURL:NSURL = NSURL(string: "tel://\(phoneNumber)") {
            let application:UIApplication = UIApplication.sharedApplication()
            if (application.canOpenURL(phoneCallURL)) {
                application.openURL(phoneCallURL);
            }
        }
}
}