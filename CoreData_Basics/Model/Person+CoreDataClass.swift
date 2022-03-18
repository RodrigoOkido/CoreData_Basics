//
//  Person+CoreDataClass.swift
//  CoreData_Basics
//
//  Created by Rodrigo Yukio Okido on 17/03/22.
//
//

import Foundation
import CoreData

@objc(Person)
public class Person: NSManagedObject {
    public override var description: String {
        return self.name ?? ""
    }
}
