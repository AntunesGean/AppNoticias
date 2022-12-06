//
//  ViewController.swift
//  AppNoticias
//
//  Created by Gean Antunes on 03/12/22.
//

import UIKit

//class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
class MainTableViewController: UITableViewController {

//  @IBOutlet weak var tableView: UITableView!
  
  var items: [String] = ["Item01", "Item02", "Item03", "Item04", "Item05", "Item06"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
//    tableView.delegate = self
//    tableView.dataSource = self
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return items.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
    cell.textLabel?.text = items[indexPath.row]
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("Index path => \(indexPath.row)")
  }

}

