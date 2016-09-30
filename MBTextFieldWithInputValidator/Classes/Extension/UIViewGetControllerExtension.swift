//
//  UIViewGetControllerExtension.swift
//  MBTextFieldWithInputValidator
//
//  Created by Perry on 15/7/6.
//  Copyright © 2015年 MmoaaY. All rights reserved.
//

import UIKit

public extension UIView{
    public func viewController() -> UIViewController? {
        var next:UIView? = self.superview!
        while next != nil{
            let nextResponder = next!.next
            if nextResponder?.isKind(of: UIViewController.classForCoder()) == true {
                return nextResponder as? UIViewController
            }
            next = next!.superview
        }
        return nil
    }
}

