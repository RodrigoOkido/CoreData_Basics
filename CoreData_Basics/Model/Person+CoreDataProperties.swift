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
    @NSManaged public var movie: NSSet?
    @NSManaged public var car: NSSet?

}

// MARK: Generated accessors for movie
extension Person {

    @objc(addMovieObject:)
    @NSManaged public func addToMovie(_ value: Movie)

    @objc(removeMovieObject:)
    @NSManaged public func removeFromMovie(_ value: Movie)

    @objc(addMovie:)
    @NSManaged public func addToMovie(_ values: NSSet)

    @objc(removeMovie:)
    @NSManaged public func removeFromMovie(_ values: NSSet)

}

// MARK: Generated accessors for car
extension Person {

    @objc(addCarObject:)
    @NSManaged public func addToCar(_ value: Car)

    @objc(removeCarObject:)
    @NSManaged public func removeFromCar(_ value: Car)

    @objc(addCar:)
    @NSManaged public func addToCar(_ values: NSSet)

    @objc(removeCar:)
    @NSManaged public func removeFromCar(_ values: NSSet)

}

extension Person : Identifiable {

}
