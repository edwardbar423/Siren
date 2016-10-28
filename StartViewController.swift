//
//  StartViewController.swift
//  Arena
//
//  Created by Andrew Barber on 10/27/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

import UIKit

class StartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var articles = ["Wolf", "Mother", "That", "Is", "All", "ALL HAIL THE WOLFMOTHER"]
    
    
    @IBOutlet weak var tblArticles: UITableView!
    
    
    
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        cell.articleLabel.text = articles[indexPath.row]
        
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

        tblArticles.delegate = self
        tblArticles.dataSource = self
        
        self.view.backgroundColor = .magenta
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
