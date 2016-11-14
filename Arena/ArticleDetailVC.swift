//
//  ArticleDetailVC.swift
//  Arena
//
//  Created by Andrew Barber on 11/14/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

import UIKit

class ArticleDetailVC: UIViewController {

    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    var article : Article?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        headlineLabel.text = article?.headline
        authorLabel.text = article?.author
        contentLabel.text = article?.content
        
        self.view.backgroundColor = .purple
    }

}
