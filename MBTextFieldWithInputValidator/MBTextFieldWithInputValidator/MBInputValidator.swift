//
//  MBInputValidator.swift
//  MBTextFieldWithInputValidator
//
//  Created by Perry on 15/7/6.
//  Copyright © 2015年 MmoaaY. All rights reserved.
//

import UIKit

class MBInputValidator: NSObject {
    class ErrorDesc {
        init(title:String, leading:String, trailing:String) {
            self.title = title
            self.leading = leading
            self.trailing = trailing
        }
        var title:String?
        var leading:String?
        var trailing:String?
    }
    
    func validateInput(input:UITextField) -> ErrorDesc?{
        return nil
    }
    
    func validateInput(input:UITextField, regexString:String) -> Bool{
        do {
            let regex:NSRegularExpression =  try NSRegularExpression(pattern: regexString, options: NSRegularExpressionOptions.AnchorsMatchLines)
            let numberOfMactches = regex.numberOfMatchesInString(input.text!, options: NSMatchingOptions.Anchored, range: NSMakeRange(0, (input.text?.lengthOfBytesUsingEncoding(NSUTF8StringEncoding))!))
            
            if 0 == numberOfMactches {
                return false
            }
        } catch {
            return false
        }
        return true
    }
}
