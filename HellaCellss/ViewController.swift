//
//  ViewController.swift
//  HellaCellss
//
//  Created by Rebecca Bartels on 9/2/16.
//  Copyright © 2016 Rebecca Bartels. All rights reserved.
//

import UIKit

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
        // you must have one in order to show things in your tableView.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myArray.count
    }
    
    //telling the cell how to be
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        let currentNumber = myArray[indexPath.row]
        
        cell.textLabel?.text = String(currentNumber)
        
        return cell
    }
    

}

