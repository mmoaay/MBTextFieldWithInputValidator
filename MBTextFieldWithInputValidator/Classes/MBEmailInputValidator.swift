//
//  MBEmailInputValidator.swift
//  JinJiangDuCheng
//
//  Created by Perry on 15/8/20.
//  Copyright (c) 2015年 SmartJ. All rights reserved.
//

import UIKit

public class MBEmailInputValidator: MBInputValidator {
    override func validateInput(input:UITextField) -> ErrorDesc?{
        if false == super.validateInput(input, regexString: "\\b([a-zA-Z0-9%_.+\\-]+)@([a-zA-Z0-9.\\-]+?\\.[a-zA-Z]{2,6})\\b") {
            return ErrorDesc(title: "温馨提示", leading: "请输入正确的", trailing: "")
        }
        return nil
    }
}
