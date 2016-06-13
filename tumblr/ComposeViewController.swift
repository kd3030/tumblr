//
//  ComposeViewController.swift
//  tumblr
//
//  Created by Kunal Desai on 6/11/16.
//  Copyright © 2016 Kunal Desai. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    @IBOutlet var uiView: UIView!
    
    @IBOutlet weak var textUI: UIButton!
    
    @IBOutlet weak var quoteUI: UIButton!
    
    @IBOutlet weak var linkUI: UIButton!
    
    @IBOutlet weak var chatUI: UIButton!
    
    @IBOutlet weak var videoUI: UIButton!

    @IBOutlet weak var photoUI: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
  
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        uiView.backgroundColor = UIColor(red: 48/255, green: 70/255, blue: 91/255, alpha: 0.8)

        
        textUI.center.y = view.bounds.height
        quoteUI.center.y = view.bounds.height
        linkUI.center.y = view.bounds.height
        chatUI.center.y = view.bounds.height
        videoUI.center.y = view.bounds.height
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        
        UIView.animateWithDuration(0.3, animations: {
            self.quoteUI.center.y -= 375
        })
   
        UIView.animateWithDuration(0.5, animations: {
            self.textUI.center.y -= 375
        })
        
        UIView.animateWithDuration(0.8, animations: {
            self.linkUI.center.y -= 270
        })
        
        UIView.animateWithDuration(0.2, animations: {
            self.chatUI.center.y -= 270
        })
        
        
        UIView.animateWithDuration(0.9, animations: {
            self.videoUI.center.y -= 270
        })
    
    print("The current value tray view is \(self.videoUI.center.y)")
    }


    
    
    @IBAction func neverMind(sender: UIButton) {
        
        UIView.animateWithDuration(0.5, animations: {
            
            self.photoUI.center.y -= 1075
        })
        
        UIView.animateWithDuration(0.8, animations: {
            self.quoteUI.center.y -= 1050


        })

        UIView.animateWithDuration(1.0, animations: {

            self.textUI.center.y -= 1075

        })
        
        UIView.animateWithDuration(1.4, animations: {
            
            self.chatUI.center.y -= 1075
            
        })
        
        UIView.animateWithDuration(1.8, animations: {
            
            self.linkUI.center.y -= 1075
            
        })
        
        UIView.animateWithDuration(2.0, animations: {
            
            self.videoUI.center.y -= 1075
            
        })
        
        delay(1.0, closure: { () -> () in
            // Stop animating the activity indicator.
            self.dismissViewControllerAnimated(false, completion: nil)
            
        })


        
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
