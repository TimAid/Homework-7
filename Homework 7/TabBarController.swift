//
//  TabBarController.swift
//  Homework 7
//
//  Created by Aid on 10.06.2022.
//

import UIKit

class TabBarController: UITabBarController {

    let personInfo = Person.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewController(with: personInfo)
    }

    func setupViewController(with person : [Person]) {
        guard let firstVC = viewControllers?.first as? ViewController else {return}
        guard let secondVC = viewControllers?.last as? SecondViewController else {return}
        
        firstVC.personInfo = person
        secondVC.personInfo = person
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
