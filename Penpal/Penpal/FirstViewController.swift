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
    @IBOutlet weak var submitButton: UIButton!

    @IBOutlet weak var storyTextField: UITextField!
    @IBOutlet weak var oldStory: UITextView!
    @IBOutlet weak var newStory: UITextView!
    
    @IBOutlet weak var buttonBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var oldStoryBottom: NSLayoutConstraint!
    
    @IBOutlet weak var newStoryBottom: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        self.view.addGestureRecognizer(tap)
//        refreshUI()
        
    }
    
    @IBAction func addStory(sender : AnyObject) {
//        penpal.addNewStoryBlock(storyTextField.text)
        var results = storyTextField.text
        newStory.text = results
        UIView.animateWithDuration(0.1, animations: { () -> Void in
            self.oldStoryBottom.constant += 250
        })
    }
    @IBAction func startTyping(sender : AnyObject) {
        UIView.animateWithDuration(0.1, animations: { () -> Void in
            self.bottomConstraint.constant = 710
            self.buttonBottomConstraint.constant = 680
        })
    }
    @IBAction func viewTapped(sender : AnyObject) {
        self.storyTextField.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let penpal = PenpalModel()
    
    func refreshUI() {
        newStory.text = ""
    }
    
    func dismissKeyboard(){
        self.storyTextField.resignFirstResponder()
    }


}

