//
//  listOfEmployeesView.swift
//  Avito
//
//  Created by Kalandarov Vakil on 23.05.2022.
//

import UIKit
import SnapKit

final class ListOfEmployeesView {

    //MARK: - public properties
    
    static let shared = ListOfEmployeesView()
    
    //MARK: - setUp Ui
    
    func createListOfEmploteesTableView(_ tableView: UITableView) {
        tableView.keyboardDismissMode = .onDrag
        tableView.separatorStyle = .none
        tableView.snp.makeConstraints { make in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
        }
    }
}
