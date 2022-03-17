//
//  Movie+CoreDataProperties.swift
//  CoreData_Basics
//
//  Created by Rodrigo Yukio Okido on 17/03/22.
//
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var name: String?
    @NSManaged public var gender: String?
    @NSManaged public var overview: String?
    @NSManaged public var released_year: Int16
    @NSManaged public var duration: String?
    @NSManaged public var person: NSSet?

}

// MARK: Generated accessors for person
extension Movie {

    @objc(addPersonObject:)
    @NSManaged public func addToPerson(_ value: Person)

    @objc(removePersonObject:)
    @NSManaged public func removeFromPerson(_ value: Person)

    @objc(addPerson:)
    @NSManaged public func addToPerson(_ values: NSSet)

    @objc(removePerson:)
    @NSManaged public func removeFromPerson(_ values: NSSet)

}

extension Movie : Identifiable {

}
