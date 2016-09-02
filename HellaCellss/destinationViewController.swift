//
//  destinationViewController.swift
//  HellaCellss
//
//  Created by Rebecca Bartels on 9/2/16.
//  Copyright © 2016 Rebecca Bartels. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    var number = ""
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
        myLabel.text = self.number

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
