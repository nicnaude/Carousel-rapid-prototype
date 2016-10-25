//
//  RootViewController.swift
//  Carousel Rapid Prototype
//
//  Created by Nicholas Naudé on 23/10/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var scrollViewImage: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    @IBOutlet var swipeGestureRecogniser: UISwipeGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 320, height: scrollViewImage.image!.size.height + 800)
        
        self.navigationController?.isNavigationBarHidden = true
        
        swipeGestureRecogniser = UISwipeGestureRecognizer(target: self, action:#selector(UIScrollViewDelegate.scrollViewDidScroll(_:)))
        swipeGestureRecogniser.delegate = self
        view.addGestureRecognizer(swipeGestureRecogniser)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func scrollViewDidScroll(_ sender: AnyObject) {
        print("scrolled")
        if scrollView.contentOffset.y >= 75.0 {
            
        }
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        print("Scroll finished")
    }
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        self.navigationItem.backBarButtonItem?.title = ""
    }
}// the end
