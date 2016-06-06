//
//  MBEmptyInputValidator.swift
//  MBTextFieldWithInputValidator
//
//  Created by Perry on 15/7/6.
//  Copyright © 2015年 MmoaaY. All rights reserved.
//

import UIKit

public class MBEmptyInputValidator: MBInputValidator {
    override func validateInput(input:UITextField) -> ErrorDesc?{
        if false == super.validateInput(input, regexString: nil) {
            return ErrorDesc(title: "温馨提示", leading: "请输入", trailing: "")
        }
        return nil
    }
}
