//
//  MBPhoneInputValidator.swift
//  MBTextFieldWithInputValidator
//
//  Created by Perry on 15/7/6.
//  Copyright © 2015年 MmoaaY. All rights reserved.
//

import UIKit

class MBPhoneInputValidator: MBInputValidator {
    override func validateInput(input:UITextField) -> ErrorDesc?{
        if false == super.validateInput(input, regexString: "^\\d{11}$") {
            return ErrorDesc(title: "温馨提示", leading: "请输入正确的", trailing: "")
        }
        return nil
    }
}