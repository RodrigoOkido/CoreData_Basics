//
//  Car+CoreDataProperties.swift
//  CoreData_Basics
//
//  Created by Rodrigo Yukio Okido on 17/03/22.
//
//

import Foundation
import CoreData


extension Car {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Car> {
        return NSFetchRequest<Car>(entityName: "Car")
    }

    @NSManaged public var model: String?
    @NSManaged public var body_type: String?
    @NSManaged public var transmission: String?
    @NSManaged public var year: Int16
    @NSManaged public var price: Double
    @NSManaged public var top_speed: Double
    @NSManaged public var brand: String?
    @NSManaged public var person: Person?

}

extension Car : Identifiable {

}
