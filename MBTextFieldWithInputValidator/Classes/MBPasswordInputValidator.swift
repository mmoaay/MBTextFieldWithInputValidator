//
//  MBPasswordInputValidator.swift
//  MBTextFieldWithInputValidator
//
//  Created by Perry on 15/7/6.
//  Copyright © 2015年 MmoaaY. All rights reserved.
//

import UIKit

class MBPasswordInputValidator: MBInputValidator {
    override func validateInput(input:UITextField) -> ErrorDesc?{
        if false == super.validateInput(input, regexString: "^[A-Za-z0-9]{6,12}$") {
            return ErrorDesc(title: "温馨提示", leading: "", trailing: "须由6-12位的字母和数字组成")
        }
        return nil
    }
}
