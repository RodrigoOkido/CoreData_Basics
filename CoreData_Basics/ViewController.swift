//
//  ViewController.swift
//  CoreData_Basics
//
//  Created by Rodrigo Yukio Okido on 16/03/22.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    
    var persistentContainer: NSPersistentContainer {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            fatalError()
        }
        
        return appDelegate.persistentContainer
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    /**
     Create some Person data to include in our CoreData.
     */
    func createPersonData() {
        
    }
    
    
    /**
     Create some Car data to include in our CoreData.
     */
    func createCarData() {
        
    }
    
    
    /**
     Create some Movie data to include in our CoreData.
     */
    func createMovieData() {
        
    }
}

