# MBTextFieldWithInputValidator

## 功能

实现对`UITextField`输入内容进行验证的功能，如果内容不符合验证策略，则弹出错误信息提示用户

## 主要特点

1.采用Swift语言编写。

2.策略模式，使用者可以通过继承`MBInputValidator`，重写`override func validateInput(input:UITextField) -> ErrorDesc?`方法即可实现自己的验证策略。目前已经实现了如下几种验证器

- `MBEmptyInputValidator`:判断内容是否为空
- `MBAlphabetInputValidator`：判断内容是否是英文字母
- `MBNumberInputValidator`：判断内容是否是数字
- `MBPhoneInputValidator`：判断内容是否是手机号
- `MBPasswordInputValidator`：判断内容是否是6-12位字母或数字组成的密码
 
3.验证器在Storyboard中指定（具体指定方法参见demo），在代码中只需要调用通用的验证方法即可，实现验证策略对业务功能开发者的透明。
 
4.因为`UIAlertView`将在iOS9中废除，所以采用了`UIAlertController`，又因为需要拿到`UITextField`所在的`ViewController`才能弹出`UIAlertController`，所以为UIView实现了获取其`ViewController`的extension。
