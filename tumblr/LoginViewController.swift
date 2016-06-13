//
//  LoginViewController.swift
//  tumblr
//
//  Created by Kunal Desai on 6/12/16.
//  Copyright © 2016 Kunal Desai. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var uiTextField: UITextField!
    
    @IBOutlet weak var uiButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        uiTextField.becomeFirstResponder()

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



    @IBAction func cancelButton(sender: UIButton) {
        
        
        uiButton.backgroundColor = UIColor(red: 4/255, green: 250/255, blue: 232/255, alpha: 0.5)

        
        
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
