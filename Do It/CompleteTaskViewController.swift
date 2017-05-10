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
    var task : Task? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if task!.important {
            taskLabel.text = "❗️\(String(describing: task!.name!))"
        } else {
            taskLabel.text = task!.name!
        }
    }

    @IBAction func completeTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        //So when you hit "Add", it jumps back to TasksVC
        navigationController!.popViewController(animated: true)
    }
    

}
