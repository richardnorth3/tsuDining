//
//  ViewController.swift
//  swipePractice
//
//  Created by TSUTech on 11/25/15.
//  Copyright © 2015 TSUTech. All rights reserved.
//

import UIKit
import MediaPlayer

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var scrollView: UIScrollView!
    
    @IBOutlet weak var ImageView: UIImageView!
    
    
    // Home Screeen Buttons
    @IBOutlet var jazzCaffeeButton: UIButton!
    @IBOutlet var wowButton: UIButton!
    @IBOutlet var einsteinButton: UIButton!
    @IBOutlet var chickfilaButton: UIButton!
    @IBOutlet var cafeteriaButton: UIButton!
    
    
    
    // Added to test out VIDEO PLAYER
    /*var moviePlayer : MPMoviePlayerController?
    */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Changes color of status bar
        let proxyViewForStatusBar : UIView = UIView(frame: CGRectMake(0, 0,self.view.frame.size.width, 20))
        proxyViewForStatusBar.backgroundColor = UIColor(colorLiteralRed: 153/256, green: 0/256, blue: 0/256, alpha: 1)
        self.view.addSubview(proxyViewForStatusBar)
        
        
        // IMAGE SLIDER
        //1 COME BACK AND CHANGE TO FIT ALL PHONES
        self.scrollView.frame = CGRectMake(self.view.frame.width, self.view.frame.height, self.view.frame.width, self.view.frame.height)
        let scrollViewWidth:CGFloat = self.scrollView.frame.width
        
        
        
        //2 skipped because no text was added for this practice
        
        //3 COME BACK AND CHANGE TO FIT ALL PHONES
        let imgOne = UIImageView(frame: CGRectMake(0, 0, scrollViewWidth, 184))
        imgOne.image = UIImage(named: "Slide 1")
        let imgTwo = UIImageView(frame: CGRectMake(scrollViewWidth, 0, scrollViewWidth, 184))
        imgTwo.image = UIImage(named: "Slide 2")
        let imgThree = UIImageView(frame: CGRectMake(scrollViewWidth*2, 0, scrollViewWidth, 184))
        imgThree.image = UIImage(named: "Slide 3")
        let imgFour = UIImageView(frame: CGRectMake(scrollViewWidth*3, 0, scrollViewWidth, 184))
        imgFour.image = UIImage(named: "Slide 4")
        
        self.scrollView.addSubview(imgOne)
        self.scrollView.addSubview(imgTwo)
        self.scrollView.addSubview(imgThree)
        self.scrollView.addSubview(imgFour)
        
        //4
        self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.width * 4, 1.0)
        self.scrollView.delegate = self
        
        
        // The number in the parentheses is the seconds of each image on slider
        NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector:"moveToNextPage", userInfo: nil, repeats: true)
        
        
        
        
        
        //Added to test out VIDEO PLAYER
        /*let path = NSBundle.mainBundle().pathForResource("TSU Rucruitment 2015", ofType: "mov")
        let url = NSURL(fileURLWithPath: path!)
        self.moviePlayer = MPMoviePlayerController(contentURL: url)
        
        self.moviePlayer!.view.frame = CGRectMake(0, 420, 375, 200)
        self.moviePlayer!.prepareToPlay()
        self.moviePlayer!.shouldAutoplay = false
        self.moviePlayer!.controlStyle = MPMovieControlStyle.Embedded
        self.view.addSubview(self.moviePlayer!.view)
        */
        
        
        
        //Added to test out Jazz Caffee Button
        jazzCaffeeButton.backgroundColor = UIColor.clearColor()
        jazzCaffeeButton.layer.cornerRadius = 5
        jazzCaffeeButton.layer.borderWidth = 0.5
        jazzCaffeeButton.layer.borderColor = UIColor.blackColor().CGColor
        
        //Added to test out WOW Button
        wowButton.backgroundColor = UIColor.clearColor()
        wowButton.layer.cornerRadius = 5
        wowButton.layer.borderWidth = 0.5
        wowButton.layer.borderColor = UIColor.blackColor().CGColor
        
        //Added to test out Einstein Button
        einsteinButton.backgroundColor = UIColor.clearColor()
        einsteinButton.layer.cornerRadius = 5
        einsteinButton.layer.borderWidth = 0.5
        einsteinButton.layer.borderColor = UIColor.blackColor().CGColor
        
        //Added to test out Chickfila Button
        chickfilaButton.backgroundColor = UIColor.clearColor()
        chickfilaButton.layer.cornerRadius = 5
        chickfilaButton.layer.borderWidth = 0.5
        chickfilaButton.layer.borderColor = UIColor.blackColor().CGColor
        
        //Added to test out Student Center Cafeteria
        cafeteriaButton.backgroundColor = UIColor.clearColor()
        cafeteriaButton.layer.cornerRadius = 5
        cafeteriaButton.layer.borderWidth = 0.5
        cafeteriaButton.layer.borderColor = UIColor.blackColor().CGColor
        
        
        
    }
    
    
    
    //Function for IMAGE SLIDER
    func moveToNextPage(){
        
        let pageWidth:CGFloat = CGRectGetWidth(self.scrollView.frame)
        let maxWidth:CGFloat = pageWidth * 4
        let contentOffset:CGFloat = self.scrollView.contentOffset.x
        
        var slideToX = contentOffset + pageWidth
        
        if contentOffset + pageWidth == maxWidth{
            slideToX = 0
        }
        self.scrollView.scrollRectToVisible(CGRectMake(slideToX, 0, pageWidth, CGRectGetHeight(self.scrollView.frame)), animated: true)
        
    }
    
    @IBAction func jazzButton(sender: AnyObject) {
        ImageView.image = UIImage(named: "jazz3.JPG")
    }
    
    
    @IBAction func wowButton(sender: AnyObject) {
        ImageView.image = UIImage(named: "wow2.JPG")
    }
    
    
    @IBAction func chickButton(sender: AnyObject) {
        ImageView.image = UIImage(named: "IMG_2848.JPG")
    }
    
    @IBAction func cafButton(sender: AnyObject) {
        ImageView.image = UIImage(named: "caf2.JPG")
    }
    
    
    @IBAction func eisteinButton(sender: AnyObject) {
        ImageView.image = UIImage(named: "bagel.JPG")
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // IMAGE SLIDER
    func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView){
        
    }
    
}

