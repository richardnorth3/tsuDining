//
//  eAccount.swift
//  TSU Dining
//
//  Created by King on 1/12/16.
//  Copyright © 2016 King North III. All rights reserved.
//

import UIKit

class eAccount: UIViewController {

    @IBOutlet weak var showCash: UIWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "www.google.com")
        let request = NSURLRequest(URL: url!)
        showCash.loadRequest(request)
        
                // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
