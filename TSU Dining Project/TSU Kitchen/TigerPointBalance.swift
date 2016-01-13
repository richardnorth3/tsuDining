//
//  TigerPointBalance.swift
//  TSU Kitchen
//
//  Created by King on 11/25/15.
//  Copyright © 2015 King North III. All rights reserved.
//

import UIKit
import SafariServices

class TigerPointBalance: UIViewController {
    
    /*let randomDollars = Int(arc4random_uniform(201))
    
    let randomTenth = Int(arc4random_uniform(10))
    
    let randomHundredth = Int(arc4random_uniform(10))
    
    
    
    
    
    @IBOutlet weak var balance: UILabel!
    
    @IBOutlet weak var tNumber: UITextField!
    
    @IBAction func calculate(sender: AnyObject) {
        
        if tNumber.text == "" {
            
            balance.text = "Please enter your T-Number"
            
            
        }
        
        else {
            
        balance.text = "Your current balance is $\(randomDollars).\(randomTenth)\(randomHundredth)"
            
        }
    }*/
    
    
    @IBOutlet weak var webVC: UIWebView!

    
    
    @IBAction func cashButton(sender: AnyObject) {
        
        //Shows website on ViewController
        self.showWebsite("https://tiger1card-sp.blackboard.com/eaccounts/(S(unw5un5v2zpyfvkli1lihion))/AnonymousHome.aspx")
        
        
        /*UIApplication.sharedApplication().openURL(NSURL(string: "https://tiger1card-sp.blackboard.com/eaccounts/(S(unw5un5v2zpyfvkli1lihion))/AnonymousHome.aspx")!)*/
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tNumber.delegate = self

        // Do any additional setup after loading the view.
        
        //Changes color of status bar
        let proxyViewForStatusBar : UIView = UIView(frame: CGRectMake(0, 0,self.view.frame.size.width, 20))
        proxyViewForStatusBar.backgroundColor = UIColor(colorLiteralRed: 153/256, green: 0/256, blue: 0/256, alpha: 1)
        self.view.addSubview(proxyViewForStatusBar)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //requests website and converts View Controller to Safari View Controller using WebView
    func showWebsite(url: String)
    {
        let URL = NSURL(string: "https://tiger1card-sp.blackboard.com/eaccounts/(S(unw5un5v2zpyfvkli1lihion))/AnonymousHome.aspx")!
        let webVC = SFSafariViewController(URL: URL)
        
        presentViewController(webVC, animated: true, completion: nil)
    }

    
    //Lets user dismiss keyboard by tapping outside of keyboard
   /* override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    //Limits the text field to 8 characters
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text else { return true }
        let newLength = text.characters.count + string.characters.count - range.length
        return newLength <= 8
    }*/
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
