//
//  LoginViewController.swift
//  PoryectoPruebaClase
//
//  Created by LABORATORIO MAC UAM on 17/8/24.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func registerAction(_ sender: Any) {
        
    let registerViewController = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
        
        self.navigationController?.pushViewController(registerViewController, animated: true)
    }
    
    @IBAction func forgetButton(_ sender: Any) {
        let forgetPass = ForgetPassViewController(nibName: "ForgetPassViewController", bundle: nil)
        
        self.navigationController?.pushViewController(forgetPass, animated: true)
    }
    
    
}
