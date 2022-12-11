//
//  ViewController.swift
//  AppNoticias
//
//  Created by Gean Antunes on 03/12/22.
//

import UIKit

class MainTableViewController: UITableViewController {
  
  var news: [ResultNews] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    loadNews()
  }
  
  func loadNews() {
    let fileUrl = Bundle.main.url(forResource: "file", withExtension: "json")!
    let jsonData = try! Data(contentsOf: fileUrl)
    
    do {
      let data = try JSONDecoder().decode([NewYorkNews].self, from: jsonData)
      news = data[0].results
    } catch {
      print(error.localizedDescription)
    }
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    print("count => \(news.count)")
    return news.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
    cell.textLabel?.text = news[indexPath.row].title
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("Index path => \(indexPath.row)")
  }

}
