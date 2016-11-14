//
//  InitialVC.swift
//  Arena
//
//  Created by Andrew Barber on 11/14/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

import UIKit

class InitialVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tblArticles: UITableView!
    
    var articles = [Article]()
    var articleToPass : Article?
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        let articleForThisRow = articles[indexPath.row]
        cell.updateCell(with: articleForThisRow)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        articleToPass = articles[indexPath.row]
        
        performSegue(withIdentifier: "displayArticleSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "addArticleSegue" {
            
        } else if segue.identifier == "displayArticleSegue" {
        let articleDetailVC = segue.destination as! ArticleDetailVC
        articleDetailVC.article = articleToPass
        }
    }
    
    @IBAction func unwindToInitialViewController(segue : UIStoryboardSegue) {
        if segue.identifier == "unwindAddArticleSegue" {
            let source = segue.source as! AddArticleVC
            if let newArticle = source.articleToPass {
                self.articles.append(newArticle)
                tblArticles.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tblArticles.delegate = self
        tblArticles.dataSource = self
        let fake1 = Article(headline: "Thing 1", author: "Soros", content: "This politics thing is a mess")
        let fake2 = Article(headline: "Thing 2", author: "Madusa", content: "This hair thing has got to stop")
        let fake3 = Article(headline: "Thing 3", author: "Batman", content: "This batman-mobile thing needs to pump the break")
        let fake4 = Article(headline: "Thing 4", author: "Geini", content: "This lamp rubbing thing needs to stop")
        let fake5 = Article(headline: "Thing 5", author: "Volmort", content: "This wizard war thing has got to blow over")
        articles.append(fake1)
        articles.append(fake2)
        articles.append(fake3)
        articles.append(fake4)
        articles.append(fake5)
        
        
        view.backgroundColor = .purple
    }

}
