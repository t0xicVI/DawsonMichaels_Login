//
//  ViewController.swift
//  DawsonMichaels_Login
//
//  Created by Dawson Michaels on 4/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var fUsername: UIButton!
    
    @IBOutlet weak var fPassword: UIButton!
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = username.text
        guard let sender = sender as? UIButton else {return}
        if sender == fPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == fUsername{
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = username.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func fUsernameButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
    @IBAction func fPasswordButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
    

}

