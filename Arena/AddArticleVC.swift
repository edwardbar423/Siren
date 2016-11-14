//
//  AddArticleVC.swift
//  Arena
//
//  Created by Andrew Barber on 11/14/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

import UIKit

class AddArticleVC: UIViewController {

    //VARIABLES
    var articleToPass : Article?
    //OUTLETS
    @IBOutlet weak var headlineTB: UITextField!
    @IBOutlet weak var authorTB: UITextField!
    @IBOutlet weak var contentTB: UITextField!
    //BUTTONS
    @IBAction func saveBtn(_ sender: AnyObject) {
       articleToPass = Article(headline: headlineTB.text, author: authorTB.text, content: contentTB.text)
        performSegue(withIdentifier: "unwindAddArticleSegue", sender: nil)
    }
    @IBAction func cancelBtn(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .purple
    }

}
