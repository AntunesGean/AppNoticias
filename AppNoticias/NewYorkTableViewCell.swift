//
//  NewYorkTableViewCell.swift
//  AppNoticias
//
//  Created by Gean Antunes on 11/12/22.
//

import UIKit

class NewYorkTableViewCell: UITableViewCell {

  @IBOutlet weak var title: UILabel!
  @IBOutlet weak var imageNews: UIImageView!
  @IBOutlet weak var by: UILabel!
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    
        imageNews.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
  func prepare(with news: ResultNews) {
    title.text = news.title
    by.text = news.byline
    imageNews.image = UIImage(named: "17malcolmx-mediumThreeByTwo440-v2")
  }

}
