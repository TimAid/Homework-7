//
//  ViewController.swift
//  Homework 7
//
//  Created by Aid on 08.06.2022.
//

import UIKit

class ViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var myTableView = UITableView()
    let identifier = "myCell"
    var personInfo : [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "contacts"
        navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Persons List"
        
        createTable()
    }


    
    //MARK: Create table
    func createTable() {
        
        self.myTableView = UITableView(frame: view.bounds, style: .plain)
        
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        myTableView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        myTableView.delegate = self
        myTableView.dataSource = self
        
        view.addSubview(myTableView)
    }

    //MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        let personInformation = personInfo[indexPath.row]
        print(personInformation)
        content.text = personInformation.fullName
        cell.contentConfiguration = content

        return cell
    }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return personInfo.count
        }

}
