//
//  ViewController.swift
//  UITEXTFIELDDEMO
//
//  Created by Dad's 6,1 on 9/20/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var firstTextField: UITextField!
    
    @IBOutlet weak var secondTextField: UITextField!
    
    
    @IBAction func loginTapped(_ sender: Any) {
        view.endEditing(true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextFields()
        
        // Do any additional setup after loading the view.
    }
    
    private func configureTextFields() {
        firstTextField.delegate = self
        secondTextField.delegate = self
    }
    
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleTap))
        view.addGestureRecognizer(tapGesture)
        
    }
    
    @objc func handleTap() {
        print("Handle tap was called")
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    

}

