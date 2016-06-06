//
//  MBTextFieldWithInputValidator.swift
//  MBTextFieldWithInputValidator
//
//  Created by Perry on 15/7/6.
//  Copyright © 2015年 MmoaaY. All rights reserved.
//

import UIKit

public class MBTextFieldWithInputValidator: UITextField {
    @IBOutlet var inputValidator:MBInputValidator?
    
    func validate(inputName:String, shouldAlert:Bool) -> MBInputValidator.ErrorDesc? {
        let error = self.validate(self.inputValidator)
        if nil != error {
            let errorReason = (error?.leading)!+inputName+(error?.trailing)!
            if true == shouldAlert {
                self.showAlertMessage((error?.title)!, message: errorReason)
            }
        }
        return error
    }
    
    private func validate(validator:MBInputValidator?) -> MBInputValidator.ErrorDesc?{
        if nil == validator {
            return nil
        }
        let ret = self.validate(validator!.next)
        if nil != ret {
            return ret
        }
        return validator!.validateInput(self)
    }
    
    private func showAlertMessage(title:String ,message:String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        let cancelAction = UIAlertAction(title: "知道了", style: UIAlertActionStyle.Cancel, handler: nil)
        alertController.addAction(cancelAction)
        self.viewController()!.presentViewController(alertController, animated: true, completion: nil)
    }
    
    
}
