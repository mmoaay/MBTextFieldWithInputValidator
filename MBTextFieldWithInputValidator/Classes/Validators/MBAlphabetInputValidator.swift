//
//  MBAlphabetInputValidator.swift
//  MBTextFieldWithInputValidator
//
//  Created by Perry on 15/7/6.
//  Copyright © 2015年 MmoaaY. All rights reserved.
//

import UIKit

public class MBAlphabetInputValidator: MBInputValidator {
    public override func validateInput(_ input:UITextField) -> ErrorDesc?{
        if false == super.validateInput(input, regexString: "^[A-Za-z]+$") {
            return ErrorDesc(title: "温馨提示", leading: "", trailing: "须由英文字母组成")
        }
        return nil
    }
}
