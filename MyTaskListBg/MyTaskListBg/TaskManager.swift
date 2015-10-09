//
//  TaskManager.swift
//  MyTaskListBg
//
//  Created by Brian J Glowe on 10/8/15.
//  Copyright © 2015 Brian Glowe. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct Task {
    var name = "Un-Named"
    var description = "Un-Described"
}



class TaskManager: NSObject {

    var tasks = [Task]()
    
    func addTask(newName: String, newDesc: String){
        tasks.append(Task(name: newName, description: newDesc))
        
    }
    
}

