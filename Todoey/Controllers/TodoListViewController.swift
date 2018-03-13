//
//  ViewController.swift
//  Todoey
//
//  Created by Tommy Öman on 2018-03-07.
//  Copyright © 2018 Tommy Öman. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let defaults = UserDefaults.standard
    
    //var itemArray = ["Find Mike", "Buy eggos", "Destroy Demogorgon"]
    var itemArray = [Item]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let newItem = Item(t_ext: "Find Mike",ch_ecked: false)
        itemArray.append(newItem)
        let newItem2 = Item(t_ext: "Buy eggos",ch_ecked: false)
        itemArray.append(newItem2)
        let newItem3 = Item(t_ext: "Destroy Demogorgon",ch_ecked: false)


//        if let items = defaults.array(forKey: "TodoListArray") as? [String] {
//            itemArray = items
//        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        //print("Cellforrowatindex Called")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row].title
        
        if itemArray[indexPath.row].done == true {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        
        return cell
    }
    
    //MARK - TableView delegate methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        
        if itemArray[indexPath.row].done == false {
           itemArray[indexPath.row].done = true
        } else {
           itemArray[indexPath.row].done = false
        }
        
        tableView.reloadData()
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //MARK - Add new items
    
    @IBAction func AddButtonPressed(_ sender: Any) {

        var todoeyText = UITextField()

        let alert = UIAlertController(title: "Add new Todoey Item", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
            //What is going to happen once the user clicks the Add Item button on our UIAlert
            let newItem = Item(t_ext: todoeyText.text!, ch_ecked: false)
            
            self.itemArray.append(newItem)
            self.defaults.set(self.itemArray, forKey: "TodoListArray")
            self.tableView.reloadData()
        }
        
        alert.addTextField {(alertTextField)
            in alertTextField.placeholder = "Create new Item"
            todoeyText = alertTextField
        }
        alert.addAction(action)
        
        present(alert,animated: true,completion: nil)
        
    }
    
}

