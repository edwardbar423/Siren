//
//  InitialViewController.swift
//  Arena
//
//  Created by Andrew Barber on 11/1/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var articles = [Article]() //How to make an empty array of articles!
    
    var articleToPass : Article?
    
    @IBOutlet weak var tblArticles: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        let article = articles[indexPath.row]
        cell.articleLabel.text = article.headline
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            articles.remove(at: indexPath.row)
        }
        tblArticles.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let fakeArticle = Article(headline: "Sweet", author: "BARTOLVER THE BROTHER", articleContent: "There was war, watch out for this barbarian")
        let fakeArtile2 = Article(headline: "Whoa", author: "Another Faker", articleContent: "This is a f a k e article. I wanted you to hear it from me personally.")
        articles.append(fakeArticle)
        articles.append(fakeArtile2)
        tblArticles.dataSource = self
        tblArticles.delegate = self
        self.view.backgroundColor = .purple
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func returnToInitialViewController(segue: UIStoryboardSegue) {
        if let headlineSource = segue.source as? AddArticleViewController, let article = headlineSource.articleContent {
            articles.append(article)
        }
        tblArticles.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        articleToPass = articles[indexPath.row]
        performSegue(withIdentifier: "bartov", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let contentDestination = segue.destination as? HeadLineViewController, let article = articleToPass {
            contentDestination.article = article
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
