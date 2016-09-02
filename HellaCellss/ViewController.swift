//
//  ViewController.swift
//  HellaCellss
//
//  Created by Rebecca Bartels on 9/2/16.
//  Copyright © 2016 Rebecca Bartels. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var myArray = [Int]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        for number in 1...100 {
            myArray.append(number)
            print(myArray)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
                let number = myArray[indexPath.row]
        
                cell.textLabel?.text = String("")
        
        return cell
        
        
    }

}

