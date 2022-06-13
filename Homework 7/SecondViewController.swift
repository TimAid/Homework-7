//
//  SecondViewController.swift
//  Homework 7
//
//  Created by Aid on 09.06.2022.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    var personInfo : [Person] = []
    var myTableView = UITableView()
    let identifier = "infoCell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "contacts"
        self.navigationItem.title = "Persons info"
        navigationController?.navigationBar.prefersLargeTitles = true
        self.tabBarItem.image = UIImage(systemName: "person.crop.circle.fill")
        view.backgroundColor = .white
    
        createTable()
        
    }
    
    func createTable() {
    
        myTableView = UITableView(frame: self.view.bounds, style: .insetGrouped)
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        myTableView.delegate = self
        myTableView.dataSource = self
        
        view.addSubview(myTableView)
    }
    
    //MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        let person = personInfo[indexPath.section]
        
        var content = cell.defaultContentConfiguration()

        switch indexPath.row {
            
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        return cell

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return personInfo.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return personInfo[section].fullName
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
