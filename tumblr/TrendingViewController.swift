//
//  TrendingViewController.swift
//  tumblr
//
//  Created by Kunal Desai on 6/11/16.
//  Copyright © 2016 Kunal Desai. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {
    

    @IBOutlet weak var searchUIView: UIImageView!

    
    @IBOutlet weak var searchScrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchScrollView.contentSize = (searchUIView.image?.size)!
        

        
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
