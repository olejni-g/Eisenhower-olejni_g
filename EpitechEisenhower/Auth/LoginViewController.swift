//
//  ViewController.swift
//  EpitechEisenhower
//
//  Created by fauquette fred on 25/09/17.
//  Copyright © 2017 Epitech. All rights reserved.
//

import UIKit
import Firebase
import FBSDKLoginKit
import GoogleSignIn

class LoginViewController: UIViewController, FBSDKLoginButtonDelegate, GIDSignInUIDelegate {


    @IBOutlet weak var connectionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login"
        connectionButton.layer.cornerRadius = 5
        // Do any additional setup after loading the view, typically from a nib.
        
        setupFbButton()
        setupGoogleButton()
    }
    
    func setupFbButton() {
        let facebookButton = FBSDKLoginButton()
        view.addSubview(facebookButton)
        facebookButton.frame = CGRect(x: 16, y: 100, width: view.frame.width - 32, height: 50)
        facebookButton.delegate = self
        facebookButton.layer.cornerRadius = 5
    }
    
    func setupGoogleButton() {
        let googleButton = GIDSignInButton()
        googleButton.frame = CGRect(x: 16, y: 116 + 66, width: view.frame.width - 32, height: 50)
        view.addSubview(googleButton)
        googleButton.layer.cornerRadius = 5
        
        GIDSignIn.sharedInstance().uiDelegate = self
        
    }
    
    @objc func handleCustomGoogleSignIn() {
        GIDSignIn.sharedInstance().signIn()
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("Facebook logout")
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult, error: Error!) {
        if error != nil {
            print(error)
            return
        }
        print("Facebook login success")
        fbToFirebase()
    }

    func fbToFirebase() {
        let accessToken = FBSDKAccessToken.current()
        guard let accessTokenString = accessToken?.tokenString else { return }
        let credentials = FacebookAuthProvider.credential(withAccessToken: accessTokenString)
        Auth.auth().signIn(with: credentials, completion: { (user, error) in
            if error != nil {
                print("Error FB user: ", error ?? "")
                return
            }
            print("Facebook Firebase login success: ", user ?? "")
            
            self.performSegue(withIdentifier: "showHome", sender: nil)
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func connect(_ sender: Any) {
        //performSegue(withIdentifier: "showHome", sender: nil)
    }
    
}

