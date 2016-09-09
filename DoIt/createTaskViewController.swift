//
//  createTaskViewController.swift
//  DoIt
//
//  Created by Tasi on 07/09/2016.
//  Copyright © 2016 Tasi. All rights reserved.
//

import UIKit

class createTaskViewController: UIViewController {
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addButton(_ sender: AnyObject) {
        //Create task from the outlet information
        let task = Task()
        task.name = taskTextField.text!
        task.important = importantSwitch.isOn
        //Add new task to array in another view controller
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

}
