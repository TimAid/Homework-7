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
    let identifierNum = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "contacts"
        self.navigationItem.title = "Person List"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .white
    
        createTable()
        
    }
    
    func createTable() {
    
        myTableView = UITableView(frame: self.view.bounds, style: .plain)
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: identifierNum)
        myTableView.delegate = self
        myTableView.dataSource = self
        
        view.addSubview(myTableView)
    }
    
    //MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell : UITableViewCell
        
//        let person = personInfo[indexPath.section]
        
        if indexPath.section%2 == 0 {
            
            cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
            var content = cell.defaultContentConfiguration()
            let index = indexPath.row/2
            print(index)
            content.text = "\(index)" //personInfo.email[index]
            content.image = UIImage(systemName: "phone")
            cell.contentConfiguration = content
            return cell
            
        }
            cell = myTableView.dequeueReusableCell(withIdentifier: identifierNum , for: indexPath)
            var content = cell.defaultContentConfiguration()
            let index = (indexPath.row - 1) / 2
            print(index)
        content.text = "\(indexPath.section)"
        
        //personInfo.phoneNumber[index]
            content.image = UIImage(systemName: "tray")
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
