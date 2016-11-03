//
//  UITextFieldValidatorExtension.swift
//  Pods
//
//  Created by ZhengYidong on 9/30/16.
//
//

import Foundation

extension UITextField {
    open func validate(_ inputName:String, shouldAlert:Bool, validator:MBInputValidator) -> MBInputValidator.ErrorDesc? {
        let error = self.validate(validator)
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
