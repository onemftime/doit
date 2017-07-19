//
//  CreateTaskViewController.swift
//  Doit
//
//  Created by Apple on 7/18/17.
//  Copyright © 2017 Jeremy. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    
    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        // Create a Task from the outlet information
        
        let task = Task()
       
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        // Add new task to array in prevous viewController

        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    

}
