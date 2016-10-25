//
//  PageItemController.swift
//  Carousel Rapid Prototype
//
//  Created by Nicholas Naudé on 24/10/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

import UIKit

class PageItemController: UIViewController {
    
    @IBOutlet weak var buttonsView: UIView!
    
    // MARK: - Variables
    var itemIndex: Int = 0
    var imageName: String = "" {
        
        didSet {
            
            if let imageView = contentImageView {
                imageView.image = UIImage(named: imageName)
            }
            
        }
    }
    
    @IBOutlet var contentImageView: UIImageView?
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        contentImageView!.image = UIImage(named: imageName)
        buttonsView.alpha = 0.0
        
        if itemIndex == 3 {
            UIView.animate(withDuration: 1.5, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
                self.buttonsView.isHidden = false
                self.buttonsView.alpha = 1.0
                self.contentImageView!.image = UIImage(named: self.imageName)
                }, completion: nil)
        }
    }
}
