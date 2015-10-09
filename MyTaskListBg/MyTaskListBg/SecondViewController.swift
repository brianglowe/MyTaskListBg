//
//  SecondViewController.swift
//  MyTaskListBg
//
//  Created by Brian J Glowe on 10/8/15.
//  Copyright © 2015 Brian Glowe. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var descriptionField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Events
    @IBAction func addTaskButton(sender: UIButton) {
        taskMgr.addTask(textField.text!, newDesc: descriptionField.text!)
        // This hides the keyboard after entry, hitting return, hitting addButton, or touching outside of field
        self.view.endEditing(true)
        textField.text = ""
        descriptionField.text = ""
        // This moves the view back to the first view controller - the TableView
        self.tabBarController?.selectedIndex = 0
        print("Button was clicked")
        
    }
    
    
    // iOS Touch events
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // UITextField Delegate
    func textFieldShouldClear(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

