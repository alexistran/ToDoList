//
//  Task.swift
//  AlexisTranToDoList
//
//  Created by Alexis Tran on 10/19/16.
//  Copyright © 2016 Alexis Tran. All rights reserved.
//

import UIKit

class Task {
    // MARK: Properties
    
    var task: String
    
    init?(task: String) {
        self.task = task
        if task.isEmpty {
            return nil
        }
    }
}
