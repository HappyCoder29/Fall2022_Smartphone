//
//  TableViewClassTableViewController.swift
//  TableViewControllerSample
//
//  Created by Drillmaps on 17/09/22.
//

import UIKit

class TableViewClassTableViewController: UITableViewController {

    let contacts = ["Ashish", "Tom", "Peter","Steve"]
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = contacts[indexPath.row]

        return cell
    }
    

   

}
