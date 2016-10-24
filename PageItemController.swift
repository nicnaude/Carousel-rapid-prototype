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
        buttonsView.isHidden = true
        
        if itemIndex == 3 {
            contentImageView!.image = UIImage(named: imageName)
            buttonsView.isHidden = false
        }
        print(itemIndex)
    }
}
