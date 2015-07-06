//
//  ViewController.swift
//  MBTextFieldWithInputValidator
//
//  Created by Perry on 15/7/6.
//  Copyright © 2015年 MmoaaY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contactField: MBTextFieldWithInputValidator!
    @IBOutlet weak var nickNameField: MBTextFieldWithInputValidator!
    @IBOutlet weak var cardField: MBTextFieldWithInputValidator!
    @IBOutlet weak var phoneField: MBTextFieldWithInputValidator!
    @IBOutlet weak var passwordField: MBTextFieldWithInputValidator!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func contactEndEditing(sender: AnyObject) {
        if nil != contactField.validate(contactField.placeholder!, shouldAlert: true) {
            return;
        }
        nickNameField.becomeFirstResponder()
    }

    @IBAction func nickNameEndEditing(sender: AnyObject) {
        if nil != nickNameField.validate(nickNameField.placeholder!, shouldAlert: true) {
            return;
        }
        cardField.becomeFirstResponder()
    }
    @IBAction func cardEndEditing(sender: AnyObject) {
        if nil != cardField.validate(cardField.placeholder!, shouldAlert: true) {
            return;
        }
        phoneField.becomeFirstResponder()
    }
    @IBAction func phoneEndEditing(sender: AnyObject) {
        if nil != phoneField.validate(phoneField.placeholder!, shouldAlert: true) {
            return;
        }
        passwordField.becomeFirstResponder()
    }
    @IBAction func passwordEndEditing(sender: AnyObject) {
        if nil != passwordField.validate(passwordField.placeholder!, shouldAlert: true) {
            return;
        }
    }
}

