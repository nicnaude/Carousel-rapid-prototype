//
//  RootViewController.swift
//  Carousel Rapid Prototype
//
//  Created by Nicholas Naudé on 23/10/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    @IBOutlet weak var scrollViewImage: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.scrollView.contentSize = scrollViewImage.frame.size
        scrollView.contentSize = CGSize(width: 320, height: scrollViewImage.image!.size.height + 600)
        
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        self.navigationItem.backBarButtonItem?.title = ""
        //        let nav = segue.destination as! UINavigationController
        //        let destinationVc = nav.topViewController as! SignInViewController
        //
        //        let backItem = UIBarButtonItem()
        //        backItem.title = "Something Else"
        //        navigationItem.backBarButtonItem = backItem
    }
}
