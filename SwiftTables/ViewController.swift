//
//  ViewController.swift
//  SwiftTables
//
//  Created by Shane Rogers on 10/20/15.
//  Copyright © 2015 Shane Rogers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

  override func viewDidLoad() {
    var tableView: UITableView?
    
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    tableView = UITableView(frame: view.bounds, style: .Plain)
    if let theTableView = tableView {
      theTableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier:"UITableViewCell")
      
      theTableView.dataSource = self
//      theTableView.autoresizingMask = .FlexibleWidth | .FlexibleHeight
      
      view.addSubview(theTableView)
    }
  }
  
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 3
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    switch section {
    case 0:
      return 3
    case 1:
      return 5
    case 2:
      return 8
    default:
      return 0
    }
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("UITableViewCell", forIndexPath: indexPath) as UITableViewCell
    cell.textLabel!.text = "Section \(indexPath.section), Cell \(indexPath.row)"
    return cell
  }
  
  override func prefersStatusBarHidden() -> Bool {
    return true
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}