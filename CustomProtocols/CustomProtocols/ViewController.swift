//
//  ViewController.swift
//  CustomProtocols
//
//  Created by Jeff Chavez on 1/13/15.
//  Copyright (c) 2015 Jeff Chavez. All rights reserved.
//

import UIKit

//** STEP 3 : add this protocol to ViewController **//
class ViewController: UIViewController, SecondViewControllerDelegate {
    
    @IBOutlet var textLabel: UILabel!
    
    @IBAction func buttonPressed (sender:AnyObject) {
        let newVC = self.storyboard?.instantiateViewControllerWithIdentifier("SECOND_VC") as SecondViewController
        self.navigationController?.pushViewController(newVC, animated: true)
//** STEP 4: assign the protocol to self **//
        newVC.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//** STEP 5 : conform to the protocol **//
    func didTapButton(string: String) {
        self.textLabel.text = string
    }
    
    @IBAction func clearTextLabel (sender: UIButton) {
        self.textLabel.text = "empty"
    }
}

