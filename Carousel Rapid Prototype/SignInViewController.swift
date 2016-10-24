//
//  SignInViewController.swift
//  Carousel Rapid Prototype
//
//  Created by Nicholas Naudé on 23/10/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButtonsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    
    @IBAction func onSignUpButtonTapped(_ sender: AnyObject) {
        if usernameTextField.text != "tim@thecodepath.com" && passwordTextField.text != "12345" {
            let alertController = UIAlertController(title: "Wah wah", message: "Nice try. Password incorrect.", preferredStyle: .alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.present(alertController, animated: true, completion:nil)
        } else if usernameTextField.text == "" && passwordTextField.text == "" {
            let alertController = UIAlertController(title: "Email required", message: "Please enter your email address", preferredStyle: .alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.present(alertController, animated: true, completion:nil)
        } else if usernameTextField.text == "tim@thecodepath.com" && passwordTextField.text == "12345" {
            let alertController = UIAlertController(title: "Signing in", message: "One moment while we sign you in", preferredStyle: .alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            performSegue(withIdentifier: "segueToWelcome", sender: nil)
            
            alertController.addAction(OKAction)
            self.present(alertController, animated: true, completion:nil)
        }
    }
} // The end
