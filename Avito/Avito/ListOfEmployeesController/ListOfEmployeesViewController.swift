//
//  ViewController.swift
//  Avito
//
//  Created by Kalandarov Vakil on 22.05.2022.
//

import UIKit

final class ListOfEmployeesViewController: UIViewController {
    
    //MARK: - Properties
    
    private var listOfEmployeesView = ListOfEmployeesView.shared
    
    private lazy var listOfEmployeesTableView = UITableView()
    private var  networkService = NetworkService()
    var detailEmployees: [Employees] = []
    var arrayTwo: [String] = []
    
    let identefire = "My Cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "List of employees"
        getListEmployees()
        createTableEmployees()
    }
    
    //MARK: - Private methods
    
    private func createTableEmployees() {
        listOfEmployeesTableView.delegate = self
        listOfEmployeesTableView.dataSource = self
        listOfEmployeesTableView.register(CellEmployees.self, forCellReuseIdentifier: identefire)
        view.addSubview(listOfEmployeesTableView)
        listOfEmployeesView.createListOfEmploteesTableView(listOfEmployeesTableView)
    }
    
    private func getListEmployees() {
        networkService.createNetworkService(http: "https://run.mocky.io/v3/1d1cb4ec-73db-4762-8c4b-0b8aa3cecd4c") { result in
            switch result{
            case .success(let model):
                DispatchQueue.main.async {
                    self.detailEmployees = model.company.employees
                    self.listOfEmployeesTableView.reloadData()
                }
            case .failure(_):
                self.showErrorAlert(text: "Проверьте подключение интернета")
            }
        }
    }
    
}
