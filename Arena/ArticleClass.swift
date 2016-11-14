//
//  ArticleClass.swift
//  Arena
//
//  Created by Andrew Barber on 11/14/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

import UIKit

class Article {
    
    var headline : String?
    var author : String?
    var content : String?
    init(headline : String?, author : String?, content : String?) {
        self.headline = headline
        self.author = author
        self.content = content
    }
    
}
