//
//  ProfileViewController.swift
//  Carousel Rapid Prototype
//
//  Created by Nicholas Naudé on 23/10/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var profileImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 320, height: profileImageView.image!.size.height + 300)
    }
    
    override func viewDidLayoutSubviews() {
        self.navigationController?.isNavigationBarHidden = false
    }
    @IBAction func onXtapped(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
}
