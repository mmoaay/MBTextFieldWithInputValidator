//
//  MBNumberInputValidator.swift
//  MBTextFieldWithInputValidator
//
//  Created by Perry on 15/7/6.
//  Copyright © 2015年 MmoaaY. All rights reserved.
//

import UIKit

public class MBNumberInputValidator: MBInputValidator {
    public override func validateInput(_ input:UITextField) -> ErrorDesc?{
        if false == super.validateInput(input, regexString: "^[0-9]+$") {
            return ErrorDesc(title: "温馨提示", leading: "", trailing: "须由数字组成")
        }
        return nil
    }
}
