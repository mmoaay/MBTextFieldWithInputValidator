//
//  MBZipCodeInputValidator.swift
//  JinJiangDuCheng
//
//  Created by Perry on 15/8/20.
//  Copyright (c) 2015年 SmartJ. All rights reserved.
//

import UIKit


//class MBPhoneInputValidator: MBInputValidator {
//    override func validateInput(input:UITextField) -> ErrorDesc?{
//        if false == super.validateInput(input, regexString: "^\\d{11}$") {
//            return ErrorDesc(title: "温馨提示", leading: "请输入正确的", trailing: "")
//        }
//        return nil
//    }
//}

open class MBZipCodeInputValidator: MBInputValidator {
    open override func validateInput(_ input:UITextField) -> ErrorDesc?{
        if false == super.validateInput(input, regexString: "^[1-9]\\d{5}|$") {
            return ErrorDesc(title: "温馨提示", leading: "请输入正确的", trailing: "")
        }
        return nil
    }
}
