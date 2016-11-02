//
//  ArticleClass.swift
//  Arena
//
//  Created by Andrew Barber on 11/1/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

import UIKit

class Article {
    
    var headline : String?
    var author : String?
    var articleContent : String?
    
    init(headline : String?, author: String?, articleContent : String?) {
        self.headline = headline
        self.author = author
        self.articleContent = articleContent
    }
    
    
}
