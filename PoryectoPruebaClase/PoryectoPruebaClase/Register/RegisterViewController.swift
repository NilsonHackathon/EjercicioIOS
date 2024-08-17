//
//  RegisterViewController.swift
//  PoryectoPruebaClase
//
//  Created by LABORATORIO MAC UAM on 17/8/24.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func BackButtom(_ sender: Any) {
        
        let loginViewController = LoginViewController(nibName: "LoginViewController", bundle: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func homeButtom(_ sender: Any) {
    }
}
