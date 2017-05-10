//
//  CompleteTaskViewController.swift
//  Do It
//
//  Created by Justin Deal on 5/10/17.
//  Copyright © 2017 J Dub Apps. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
    var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if task.important {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name
        }
    }

    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        
        //Reloads data in table in previousVC
        previousVC.tableView.reloadData()
        
        //So when you hit "Add", it jumps back to TasksVC
        navigationController!.popViewController(animated: true)
    }
    

}
