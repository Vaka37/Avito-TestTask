//
//  v.swift
//  Avito
//
//  Created by Kalandarov Vakil on 23.05.2022.
//

import UIKit

extension ListOfEmployeesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return detailEmployees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: identefire, for: indexPath) as? CellEmployees {
            arrayTwo = detailEmployees[indexPath.row].skills
            let stringRepresentation = arrayTwo.joined(separator: ",")
            cell.getInfoEmployess(model: detailEmployees[indexPath.row], skills: stringRepresentation)
            return cell
        }
        return UITableViewCell()
    }

}
