//
//  AddArticleViewController.swift
//  Arena
//
//  Created by Andrew Barber on 11/1/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

import UIKit

class AddArticleViewController: UIViewController {

    
    var articleContent : Article?
    
    @IBOutlet weak var addArticleTextBox: UITextField!
    @IBOutlet weak var addAuthorTxtBox: UITextField!
    @IBOutlet weak var addContentTxtBox: UITextView!
    
    @IBAction func addArticleBtn(_ sender: AnyObject) {
        articleContent = Article(headline: addArticleTextBox.text, author: addAuthorTxtBox.text, articleContent: addContentTxtBox.text)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
