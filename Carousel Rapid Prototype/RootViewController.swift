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
}
