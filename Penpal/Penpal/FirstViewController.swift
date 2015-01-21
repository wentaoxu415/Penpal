//
//  FirstViewController.swift
//  Penpal
//
//  Created by Wentao Xu on 1/20/15.
//  Copyright (c) 2015 W16 Design Studio. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController {

    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector,(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWasShown(notification: NSNotification) {
        var info = notification.userInfo!
        var keyboardFrame: CGRect = (info[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue()
        
        UIView.animateWithDuration(0.1, animations: { () -> Void in
            self.bottomConstraint.constant = 280 + 20
        })
    }


}

