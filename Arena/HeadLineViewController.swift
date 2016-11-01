//
//  HeadLineViewController.swift
//  Arena
//
//  Created by Andrew Barber on 11/1/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

import UIKit

class HeadLineViewController: UIViewController {

    var headLineText : String?
    
    @IBOutlet weak var headLineLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        headLineLabel.text = headLineText
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
