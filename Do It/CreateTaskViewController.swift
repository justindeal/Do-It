//
//  CreateTaskViewController.swift
//  Do It
//
//  Created by Justin Deal on 5/9/17.
//  Copyright © 2017 J Dub Apps. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        //Create a task from the object information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        //Add task to array in previous ViewController
        
        previousVC.tasks.append(task)
        
        //Reloads data in table in previousVC
        previousVC.tableView.reloadData()
        
        //So when you hit "Add", it jumps back to TasksVC
        navigationController!.popViewController(animated: true)
        
    }
   

}
