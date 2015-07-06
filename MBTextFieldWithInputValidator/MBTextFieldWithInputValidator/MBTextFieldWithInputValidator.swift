//
//  MBTextFieldWithInputValidator.swift
//  MBTextFieldWithInputValidator
//
//  Created by Perry on 15/7/6.
//  Copyright © 2015年 MmoaaY. All rights reserved.
//

import UIKit

class MBTextFieldWithInputValidator: UITextField {
    @IBOutlet var inputValidator:MBInputValidator?
    
    func validate(inputName:String, shouldAlert:Bool) -> MBInputValidator.ErrorDesc? {
        
        let error = self.inputValidator!.validateInput(self)
        if nil != error {
            let errorReason = (error?.leading)!+inputName+(error?.trailing)!
            if true == shouldAlert {
                self.showAlertMessage((error?.title)!, message: errorReason)
            }
            return error
        } else {
            return nil
        }
    }
    
    private func showAlertMessage(title:String ,message:String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        let cancelAction = UIAlertAction(title: "知道了", style: UIAlertActionStyle.Cancel, handler: nil)
        alertController.addAction(cancelAction)
        self.viewController()!.presentViewController(alertController, animated: true, completion: nil)
    }
    
    
}
