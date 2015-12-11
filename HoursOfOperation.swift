//
//  Hours of Operation.swift
//  TSU Kitchen
//
//  Created by King on 11/25/15.
//  Copyright © 2015 King North III. All rights reserved.
//

import UIKit

class HoursOfOperation: UIViewController {

    @IBOutlet weak var ScrollView: UIScrollView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Changes color of status bar
        let proxyViewForStatusBar : UIView = UIView(frame: CGRectMake(0, 0,self.view.frame.size.width, 20))
        proxyViewForStatusBar.backgroundColor = UIColor(colorLiteralRed: 153/256, green: 0/256, blue: 0/256, alpha: 1)
        self.view.addSubview(proxyViewForStatusBar)
        
        ScrollView.contentSize.height = 900
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
