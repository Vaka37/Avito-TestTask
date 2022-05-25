//
//  CellEmpoyeesView.swift
//  Avito
//
//  Created by Kalandarov Vakil on 23.05.2022.
//

import UIKit
import SnapKit

final class CellEmployeewView {
    
    //MARK: - Public properties
    
    static let shared = CellEmployeewView()
    
    //MARK: - Setup Ui
    
    func createNameLabel(nameLabel: UILabel, text: String) {
        nameLabel.text = text
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(5)
            make.left.equalTo(5)
            make.bottom.equalTo(-5)
            make.width.equalTo(100)
        }
    }
    
    func createPhoneNumberLabel(phoneNumberLabel: UILabel, nameLabel: UILabel, text: String) {
        phoneNumberLabel.text = text
        phoneNumberLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.top)
            make.left.equalTo(nameLabel.snp.right).offset(5)
            make.bottom.equalTo(nameLabel.snp.bottom)
            make.width.equalTo(110)
        }
    }
    
    func createSkillsLabel(skillsLabel: UILabel, phoneNumberLabel: UILabel, text: String, contentView: UIView) {
        skillsLabel.text = text
        skillsLabel.adjustsFontSizeToFitWidth = true
        skillsLabel.snp.makeConstraints { make in
            make.top.equalTo(phoneNumberLabel.snp.top)
            make.left.equalTo(phoneNumberLabel.snp.right).offset(5)
            make.bottom.equalTo(phoneNumberLabel.snp.bottom)
            make.right.equalTo(contentView.snp.right).offset(-5)
        }
    }
}
