//
//  ViewController.swift
//  MBTextFieldWithInputValidator
//
//  Created by mmoaay on 04/21/2016.
//  Copyright (c) 2016 mmoaay. All rights reserved.
//

import UIKit
import MBTextFieldWithInputValidator

class ViewController: UIViewController {

    @IBOutlet var phoneTextField: MBTextFieldWithInputValidator!
    
    @IBOutlet var pwdTextField: MBTextFieldWithInputValidator!
    
    @IBOutlet var emailTextField: MBTextFieldWithInputValidator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupValidator()
    }
    
    private func setupValidator() {
        phoneTextField.inputValidator = MBPhoneInputValidator(next: MBNumberInputValidator(next: MBEmptyInputValidator()))
        
        pwdTextField.inputValidator = MBPasswordInputValidator(next: MBEmptyInputValidator())
        
        emailTextField.inputValidator = MBEmailInputValidator(next: MBEmptyInputValidator())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func phoneEditingDidEnd(_ sender: AnyObject) {
        phoneTextField.validate("手机号", shouldAlert: true)
    }
    
    @IBAction func pwdEditingDidEnd(_ sender: AnyObject) {
        pwdTextField.validate("密码", shouldAlert: true)
    }
    
    @IBAction func emailEditingDidEnd(_ sender: AnyObject) {
        emailTextField.validate("邮箱", shouldAlert: true)
    }
}

