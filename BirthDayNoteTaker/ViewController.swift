//
//  ViewController.swift
//  BirthDayNoteTaker
//
//  Created by Tunahan Özataç on 6.10.2019.
//  Copyright © 2019 Tunahan Ozatac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birtdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        // casting as? as!
        if let newName = storedName as? String{
            nameLabel.text = "Name : \(newName)"
        }
        if let newBirthday = storedBirthday as? String{
            birtdayLabel.text = "Birthday: \(newBirthday)"
        }
    }

    @IBAction func saveClicked(_ sender: Any) {
        UserDefaults.standard.set(nameText.text, forKey: "name")
        UserDefaults.standard.set(birthdayText.text, forKey: "birthday")
        
        nameLabel.text = "Name : \(nameText.text!)"
        birtdayLabel.text = "Birthday : \(birthdayText.text!)"
        
    }
    @IBAction func deleteClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirdthday = UserDefaults.standard.object(forKey: "birthday")
        
        
        if (storedName as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name : "
        }
        if (storedBirdthday as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "birthday")
            birtdayLabel.text = "Birthday : "
        }
        
        
        
    }
    
}

