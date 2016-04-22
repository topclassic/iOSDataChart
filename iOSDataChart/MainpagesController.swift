//
//  MainpagesController.swift
//  iOSDataChart
//
//  Created by Chotipat on 4/23/2559 BE.
//  Copyright © 2559 Chotipat. All rights reserved.
//

import UIKit
import RealmSwift

class MainpagesController: UITableViewController{
    
    
    var textTitle = ["Graph", "Setting Name", "Setting Limit", "Help"]
    var textNote = ["View electric power with graph","You can set name for outlet", "You can set limit for outlet","Helper"]
    var imageImages = [UIImage(named: "graph"),UIImage(named: "tool"),UIImage(named: "meter"),UIImage(named: "help")]
    
    
    override func viewDidLoad() { //ทุกครั้งที่มีการโหลดข้อมูล
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
         let cell = self.tableView.dequeueReusableCellWithIdentifier("MainpagesCell", forIndexPath: indexPath) as! ManpagesCell
        cell.TitleLabel?.text = textTitle[indexPath.row]
        cell.DetailLabel?.text = textNote[indexPath.row]
        cell.ImageView.image = imageImages[indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textTitle.count
    }
    
    
    
}
