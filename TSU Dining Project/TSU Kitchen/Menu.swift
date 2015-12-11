//
//  SecondViewController.swift
//  TSU Kitchen
//
//  Created by King on 11/25/15.
//  Copyright © 2015 King North III. All rights reserved.
//

import UIKit

class Menu: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Changes color of status bar
        let proxyViewForStatusBar : UIView = UIView(frame: CGRectMake(0, 0,self.view.frame.size.width, 20))
        proxyViewForStatusBar.backgroundColor = UIColor(colorLiteralRed: 153/256, green: 0/256, blue: 0/256, alpha: 1)
        self.view.addSubview(proxyViewForStatusBar)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }


}

