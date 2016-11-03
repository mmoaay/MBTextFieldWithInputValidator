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
    @IBOutlet weak var phoneTextField: MBTextFieldWithInputValidator!
    @IBOutlet weak var pwdTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        phoneTextField.inputValidator = MBPhoneInputValidator(next:MBNumberInputValidator(next: MBEmptyInputValidator()))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submit(_ sender: AnyObject) {
        if let error = phoneTextField.validate("手机号", shouldAlert: true) {
            return
        }
        
        if let error = pwdTextField.validate("密码", shouldAlert: true, validator:MBPasswordInputValidator(next: MBEmptyInputValidator())) {
            return
        }
    }
}

