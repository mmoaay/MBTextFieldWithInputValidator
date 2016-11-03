//
//  MBInputValidator.swift
//  MBTextFieldWithInputValidator
//
//  Created by Perry on 15/7/6.
//  Copyright © 2015年 MmoaaY. All rights reserved.
//

import UIKit

public class MBInputValidator: NSObject {
    
    @IBOutlet public var next:MBInputValidator?
    
    public convenience init(next:MBInputValidator?) {
        self.init()
        self.next = next
    }
    
    public class ErrorDesc {
        init(title:String, leading:String, trailing:String) {
            self.title = title
            self.leading = leading
            self.trailing = trailing
        }
        var title:String?
        var leading:String?
        var trailing:String?
    }
    
    public func validateInput(_ input:UITextField) -> ErrorDesc?{
        return nil
    }
    
    public func validateInput(_ input:UITextField, regexString:String?) -> Bool{
        if nil == regexString {
            let trim = input.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
            return 0 != trim?.lengthOfBytes(using: String.Encoding.utf8)
        }else {
            do {
                let regex:NSRegularExpression =  try NSRegularExpression(pattern: regexString!, options: NSRegularExpression.Options.anchorsMatchLines)
                let numberOfMactches = regex.numberOfMatches(in: input.text!, options: NSRegularExpression.MatchingOptions.anchored, range: NSMakeRange(0, (input.text?.lengthOfBytes(using: String.Encoding.utf8))!))
                
                if 0 == numberOfMactches {
                    return false
                }
            } catch {
                return false
            }
            return true
        }
    }
}
