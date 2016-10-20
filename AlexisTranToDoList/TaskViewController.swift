//
//  TaskViewController.swift
//  AlexisTranToDoList
//
//  Created by Alexis Tran on 10/19/16.
//  Copyright © 2016 Alexis Tran. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController, UITextFieldDelegate, UINavigationControllerDelegate {
    // MARK: Properties
   
    @IBOutlet weak var taskTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var task: Task?
    // MARK: UITextFieldDelegate
//    func textFieldDidBeginEditing(textField: UITextField) {
//        // Disable the Save button while editing.
//        saveButton.isEnabled = false
//    }
//    func checkValidTaskName() {
//        // Disable the Save button if the text field is empty.
//        let text = taskTextField.text ?? ""
//        saveButton.isEnabled = !text.isEmpty
//    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(textField: UITextField) {
//        checkValidTaskName()
//        navigationItem.title = textField.text
        }
    
    // MARK: Navigation
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if saveButton === sender {
            let t = taskTextField.text ?? ""
            task = Task(task: t)
            (segue.destination as! TaskTableViewController).tasks.append(task!)
        }
    }
    
    
    // MARK: Actions
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Handle the text field’s user input through delegate callbacks.
        taskTextField.delegate = self
        //checkValidTaskName()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

