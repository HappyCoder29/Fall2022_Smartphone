//
//  ViewController.swift
//  BasicTableViewController
//
//  Created by Drillmaps on 17/09/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    /*
     1. Add a Table View to the Controller
     2. Streach the table view so that it occupies whole screen
     3. Add a table view cell to the table
     4. Add cell identifier in the left column menu
     5. Drag and drop an outlet for the tableview on the code name it tblView
     6. Add UITableViewDelegate, UITableViewDataSource as the protocols on the view controller class
     7. Compiler will start complaining and click on the dot and add the function stubs
     8. In viewDidLoad add tblView.delegate = self and tblView.dataSource = self
     9. Create an array which will act as Data source for now
     10. In the tableView function for numberOfRowsInSection return array.count value
     11. In the table view function for cellForRowAt, create a variable for cell and assign it to tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
     12. Assign value to the cell's text view.text
     13. Return the cell
     */
    

    @IBOutlet weak var tblView: UITableView!
    
    let contacts = ["Ashish", "Tom", "Peter", "Bill", "Mark", "Steve"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row]
        return cell
    }


}

