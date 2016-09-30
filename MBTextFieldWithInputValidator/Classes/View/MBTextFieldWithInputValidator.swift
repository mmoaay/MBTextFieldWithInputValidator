//
//  MBTextFieldWithInputValidator.swift
//  MBTextFieldWithInputValidator
//
//  Created by Perry on 15/7/6.
//  Copyright © 2015年 MmoaaY. All rights reserved.
//

import UIKit

open class MBTextFieldWithInputValidator: UITextField {
    @IBOutlet open var inputValidator:MBInputValidator?
    
    open func validate(_ inputName:String, shouldAlert:Bool) -> MBInputValidator.ErrorDesc? {
        let error = self.validate(self.inputValidator)
        if nil != error {
            let errorReason = (error?.leading)!+inputName+(error?.trailing)!
            if true == shouldAlert {
                self.showAlertMessage((error?.title)!, message: errorReason)
            }
        }
        return error
    }
    
    fileprivate func validate(_ validator:MBInputValidator?) -> MBInputValidator.ErrorDesc?{
        if nil == validator {
            return nil
        }
        let ret = self.validate(validator!.next)
        if nil != ret {
            return ret
        }
        return validator!.validateInput(self)
    }
    
    fileprivate func showAlertMessage(_ title:String ,message:String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        let cancelAction = UIAlertAction(title: "知道了", style: UIAlertActionStyle.cancel, handler: nil)
        alertController.addAction(cancelAction)
        self.viewController()!.present(alertController, animated: true, completion: nil)
    }
    
    
}
