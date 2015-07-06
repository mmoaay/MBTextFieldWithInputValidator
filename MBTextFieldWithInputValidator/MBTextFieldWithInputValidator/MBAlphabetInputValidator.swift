//
//  MBAlphabetInputValidator.swift
//  MBTextFieldWithInputValidator
//
//  Created by Perry on 15/7/6.
//  Copyright © 2015年 MmoaaY. All rights reserved.
//

import UIKit

class MBAlphabetInputValidator: MBInputValidator {
    override func validateInput(input:UITextField) -> ErrorDesc?{
        if false == super.validateInput(input, regexString: "^[A-Za-z]+$") {
            return ErrorDesc(title: "温馨提示", leading: "", trailing: "须由英文字母组成")
        }
        return nil
    }
}
