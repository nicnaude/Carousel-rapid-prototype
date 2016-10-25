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
    @IBOutlet weak var formView: UIView!
    
    var originalSignInButtonsCenter: CGPoint!
    var offSetSignInButtonsCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        originalSignInButtonsCenter = signInButtonsView.center
        offSetSignInButtonsCenter = CGPoint(x: originalSignInButtonsCenter.x, y: originalSignInButtonsCenter.y - 45)
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) {(Notification) in
            print("Keyboard was  shown?")
            self.signInButtonsView.center = self.offSetSignInButtonsCenter
        }
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) {(Notification) in
            print("Keyboard was shown?")
            self.signInButtonsView.center = self.originalSignInButtonsCenter
        }
        //
        formView.alpha = 0.0
        
        UIView.animate(withDuration: 1.5, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.formView.alpha = 1.0
            }, completion: nil)
        
        //
        
        
    }
    
    @IBAction func didTapMainView(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    override func viewDidLayoutSubviews() {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    
    @IBAction func onSignUpButtonTapped(_ sender: AnyObject) {
        if usernameTextField.text != "tim" && passwordTextField.text != "12345" {
            let alertController = UIAlertController(title: "Incorrect login details", message: "Nice try. Password incorrect.", preferredStyle: .alert)
            
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
        } else if usernameTextField.text == "tim" && passwordTextField.text == "12345" {
            let alertController = UIAlertController(title: "Signing in...", message: "", preferredStyle: .alert)
            self.present(alertController, animated: true, completion:nil)
            
            let when = DispatchTime.now() + 2 // change 2 to desired number of seconds
            DispatchQueue.main.asyncAfter(deadline: when) {
                self.performSegue(withIdentifier: "segueToWelcome", sender: nil)
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
} // The end
