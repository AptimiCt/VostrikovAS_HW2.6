//
//  SectionTableViewController.swift
//  VostrikovAS_HW2.6
//
//  Created by Александр Востриков on 08/08/2019.
//  Copyright © 2019 Александр Востриков. All rights reserved.
//

import UIKit

class SectionTableViewController: UITableViewController {
    
    var person: [Person] = []
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellForTaskTwo",
                                                 for: indexPath)
        let fullName = "\(person[indexPath.row].firstName) \(person[indexPath.row].lastName)"
        print(fullName)
        cell.textLabel?.text = fullName
        return cell
    }
}
