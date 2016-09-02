//
//  TableViewController.swift
//  myriadOfCells
//
//  Created by Rebecca Bartels on 8/9/16.
//  Copyright © 2016 Rebecca Bartels. All rights reserved.
//

import UIKit
import Foundation

class TableViewController: UITableViewController {
    
    var myArray: [Int] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for numberInt in 1...100{
            
            myArray.append(numberInt)
        }
        print(myArray)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return myArray.count
    }
    

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        let currentNumber = myArray[indexPath.row]
        
        cell.textLabel?.text = String(currentNumber)
        
        return cell
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destination = segue.destinationViewController as! ViewController
        
        let senderCell = sender as! UITableViewCell
        
        let whatIsYourText = senderCell.textLabel?.text
        
        var unwrappedText = ""
        
        if whatIsYourText != nil {
            
            print("im not nil")
            
            unwrappedText = whatIsYourText!
            
            print(unwrappedText)
            
            destination.text = unwrappedText
        }
        
        
    }
    
    
}
