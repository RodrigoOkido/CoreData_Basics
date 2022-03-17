//
//  Person+CoreDataProperties.swift
//  CoreData_Basics
//
//  Created by Rodrigo Yukio Okido on 17/03/22.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int32
    @NSManaged public var email: String?
    @NSManaged public var movie: Movie?
    @NSManaged public var car: Car?

}

extension Person : Identifiable {

}
