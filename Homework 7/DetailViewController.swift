//
//  DetailViewController.swift
//  Homework 7
//
//  Created by Aid on 10.06.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    var personInfo : [Person] = []
    
    var phoneLabel = UILabel()
    var mailLabel = UILabel()
    
    var person : Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.title = "hi"
       createLabels()
    }
    
    func createLabels() {
        phoneLabel.frame = CGRect(x: 40, y: 100, width: 200, height: 24)
        phoneLabel.text = "Phone : \(person.phoneNumber)"
        phoneLabel.numberOfLines = 0
        phoneLabel.adjustsFontSizeToFitWidth = true
        
        mailLabel.frame = CGRect(x: 40, y: 140 , width: 200, height: 24)
        mailLabel.text = "Email : \(person.email)"
        mailLabel.numberOfLines = 0
        mailLabel.adjustsFontSizeToFitWidth = true
        
        
        view.addSubview(phoneLabel)
        view.addSubview(mailLabel)
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
