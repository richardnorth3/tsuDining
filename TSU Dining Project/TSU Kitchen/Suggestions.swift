//
//  Suggestions.swift
//  TSU Kitchen
//
//  Created by King on 11/25/15.
//  Copyright © 2015 King North III. All rights reserved.
//

import UIKit
import Parse

class Suggestions: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var suggestLabel: UILabel!
    
    @IBOutlet weak var suggestText: UITextView!
    
    @IBAction func submit(sender: AnyObject) {
        
        if suggestText.text == "" {
            
            suggestLabel.text = "Please enter text"
            
        }
        else if suggestText.text == "Type here..."{
            
           suggestLabel.text = "Please enter text" 
            
        }
        else {
            
            suggestLabel.text = "Thanks for your feedback!"
        }
        
        let testObject = PFObject(className: "Suggestions")
        testObject["suggestion"] = suggestText.text
        testObject.saveInBackground()
        
        suggestText.text = ""
        
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.suggestText.delegate = self
        suggestText.text = "Type here..."
        suggestText.textColor = UIColor.lightGrayColor()
        self.suggestText.layer.borderWidth = 5
        self.suggestText.layer.borderColor = UIColor.lightGrayColor().CGColor
        
        
        
        
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
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textView: UITextView!) -> Bool {
        
        textView.resignFirstResponder()
        
        return true
    }
    
    func textViewDidBeginEditing(textView: UITextView) {
        if suggestText.textColor == UIColor.lightGrayColor(){
            suggestText.text = nil
            suggestText.textColor = UIColor.blackColor()
        }
    }
    
    func textViewDidEndEditing(textView: UITextView) {
        if suggestText.text.isEmpty{
            suggestText.text = "Type here..."
            suggestText.textColor = UIColor.lightGrayColor()
        }
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
