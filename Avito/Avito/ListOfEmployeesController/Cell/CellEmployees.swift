//
//  CellEmployees.swift
//  Avito
//
//  Created by Kalandarov Vakil on 23.05.2022.
//

import UIKit

final class CellEmployees: UITableViewCell {
    
    //MARK: - Properties
    
    private let cellEmployeesView = CellEmployeewView.shared
    
    private lazy var nameLabel = UILabel()
    private lazy var phoneNumberLabel = UILabel()
    private lazy var skillsLabel = UILabel()
    
    //MARK: - Private methods
    
    private func setUpCell() {
        self.selectionStyle = .none
        contentView.addSubview(nameLabel)
        contentView.addSubview(phoneNumberLabel)
        contentView.addSubview(skillsLabel)
        }
        
    func getInfoEmployess(model: Employees, skills: String) {
        setUpCell()
        cellEmployeesView.createNameLabel(nameLabel: nameLabel, text: model.name)
        cellEmployeesView.createPhoneNumberLabel(phoneNumberLabel: phoneNumberLabel,
                                                 nameLabel: nameLabel,
                                                 text: model.phoneNumber)
        cellEmployeesView.createSkillsLabel(skillsLabel: skillsLabel,
                                            phoneNumberLabel: phoneNumberLabel,
                                            text: skills, contentView: contentView)
    }
}
