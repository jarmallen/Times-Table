//
//  ViewController.swift
//  Times Table
//
//  Created by Jared Allen on 11/12/15.
//  Copyright © 2015 Jared Allen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        let timesTable = Int(sliderValue.value)
        cell.textLabel!.text = String(timesTable * (indexPath.row + 1))
        
        return cell
    }

    @IBAction func sliderMoved(sender: AnyObject) {
        table.reloadData()
        
    }

}

