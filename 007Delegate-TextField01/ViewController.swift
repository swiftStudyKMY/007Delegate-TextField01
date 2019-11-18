//
//  ViewController.swift
//  007Delegate-TextField01
//
//  Created by 김민영 on 11/18/19.
//  Copyright © 2019 김민영. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // placeholder
        tf.placeholder = "값을 입력하시오."
        
        /* keyboardType enum
            case `default` // Default type for the current input method.
            case asciiCapable // Displays a keyboard which can enter ASCII characters
            case numbersAndPunctuation // Numbers and assorted punctuation.
            case URL // A type optimized for URL entry (shows . / .com prominently).
            case numberPad // A number pad with locale-appropriate digits (0-9, ۰-۹, ०-९, etc.). Suitable for PIN entry.
            case phonePad // A phone pad (1-9, *, 0, #, with letters under the numbers).
            case namePhonePad // A type optimized for entering a person's name or phone number.
            case emailAddress // A type optimized for multiple email address entry (shows space @ . prominently).
         
            @available(iOS 4.1, *)
            case decimalPad // A number pad with a decimal point.
         
            @available(iOS 5.0, *)
            case twitter // A type optimized for twitter text entry (easy access to @ #)
         
            @available(iOS 7.0, *)
            case webSearch // A default keyboard type with URL-oriented addition (shows space . prominently).
         
            @available(iOS 10.0, *)
            case asciiCapableNumberPad // A number pad (0-9) that will always be ASCII digits.
         */
        tf.keyboardType = UIKeyboardType.twitter
        
        /* Apperance enum
             case `default` // Default apperance for the current input method.
             @available(iOS 7.0, *)
             case dark
             @available(iOS 7.0, *)
             case light
         */
        tf.keyboardAppearance = UIKeyboardAppearance.dark
        
        /* returnKey Type 
             case `default`
             case go
             case google
             case join
             case next
             case route
             case search
             case send
             case yahoo
             case done
             case emergencyCall
             @available(iOS 9.0, *)
             case `continue`
         */
        tf.returnKeyType = UIReturnKeyType.google
        /*  값이 비어있을 경우 return key 비활성화. default 값은 NO bool type
            default is NO (when YES, will automatically disable return key when text widget has zero-length contents, and will automatically enable when text widget has non-zero-length contents)
         */
        tf.enablesReturnKeyAutomatically = true
        /*  type이 *로 표기 Password
            default is NO
         */
        tf.isSecureTextEntry = true;
        /*
            default is NO which moves cursor to location clicked. if YES, all text cleared
         */
        tf.clearsOnBeginEditing = true
        
        /*  sets when the clear button shows up.
            default is UITextFieldViewModeNever
         UITextField.ViewMode type enum
         case never
         case whileEditing
         case unlessEditing
         case always
         */
        tf.clearButtonMode = UITextField.ViewMode.always
        
    }


}

