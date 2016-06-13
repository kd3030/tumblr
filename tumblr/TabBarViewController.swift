//
//  TabBarViewController.swift
//  tumblr
//
//  Created by Kunal Desai on 6/11/16.
//  Copyright © 2016 Kunal Desai. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!

    @IBOutlet weak var exploreView: UIImageView!

    
    var selectedIndex: Int = 0
    
    @IBOutlet weak var homeUIButton: UIButton!
    @IBOutlet weak var searchUIButton: UIButton!
    @IBOutlet weak var accountUIButton: UIButton!
    @IBOutlet weak var trendingUIButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.exploreView.alpha = 1
        self.homeUIButton.selected = true
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        
        homeViewController.view.frame = contentView.frame
        
   //     addChildViewController(homeViewController)
        contentView.addSubview(homeViewController.view)
    //    homeViewController.didMoveToParentViewController(self)
        
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")

        
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")

        
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didPressHome(sender: UIButton) {
        
        homeViewController.view.frame = contentView.frame
        contentView.addSubview(homeViewController.view)
        self.exploreView.alpha = 1
        self.homeUIButton.selected = true
        self.searchUIButton.selected = false
        self.accountUIButton.selected = false
        self.trendingUIButton.selected = false
    }

  
    @IBAction func didPressSearch(sender: UIButton) {
        
        searchViewController.view.frame = contentView.frame
        contentView.addSubview(searchViewController.view)
        self.exploreView.alpha = 0
        self.homeUIButton.selected = false
        self.searchUIButton.selected = true
        self.accountUIButton.selected = false
        self.trendingUIButton.selected = false
        
    }
    
    
    
    @IBAction func didPressAccount(sender: UIButton) {
        
        accountViewController.view.frame = contentView.frame
        contentView.addSubview(accountViewController.view)
        self.exploreView.alpha = 1
        self.homeUIButton.selected = false
        self.searchUIButton.selected = false
        self.accountUIButton.selected = true
        self.trendingUIButton.selected = false
        
        
    }
    
    
    @IBAction func didPressTrend(sender: UIButton) {
        
        
        trendingViewController.view.frame = contentView.frame
        contentView.addSubview(trendingViewController.view)
        self.exploreView.alpha = 1
        
        self.homeUIButton.selected = false
        self.searchUIButton.selected = false
        self.accountUIButton.selected = false
        self.trendingUIButton.selected = true
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
