//
//  SecondViewController.swift
//  CustomProtocols
//
//  Created by Jeff Chavez on 1/13/15.
//  Copyright (c) 2015 Jeff Chavez. All rights reserved.
//

import UIKit

//** STEP 1 : create a protocol in the controller that will be passing the data **//
protocol SecondViewControllerDelegate {
    func didTapButton (string: String)
}

class SecondViewController: UIViewController {
    
    @IBOutlet var textLabel : UILabel!
    
    //** STEP 2 : create a delegate property **//
    var delegate : SecondViewControllerDelegate?
    
    @IBAction func buttonPressed (sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //** STEP 6 : call the method on the delegate property **//
        delegate?.didTapButton(self.textLabel.text!)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}