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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        //Create a task from the object information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        
        //So when you hit "Add", it jumps back to TasksVC
        navigationController!.popViewController(animated: true)
        
    }
   

}
