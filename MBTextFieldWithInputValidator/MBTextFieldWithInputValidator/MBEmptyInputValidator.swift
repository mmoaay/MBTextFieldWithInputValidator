//
//  MBEmptyInputValidator.swift
//  MBTextFieldWithInputValidator
//
//  Created by Perry on 15/7/6.
//  Copyright © 2015年 MmoaaY. All rights reserved.
//

import UIKit

class MBEmptyInputValidator: MBInputValidator {
    override func validateInput(input:UITextField) -> ErrorDesc?{
        let trim = input.text?.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        if 0 == trim?.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) {
            return ErrorDesc(title: "温馨提示", leading: "请输入", trailing: "")
        }
        return nil
    }
}
