//
//  TableViewCell.swift
//  Arena
//
//  Created by Andrew Barber on 11/14/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var articleLabel: UILabel!

    func updateCell(with article: Article) {
        articleLabel.text = article.headline
    }

}
