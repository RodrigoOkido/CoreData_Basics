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
    @NSManaged public var person: Person?

}

extension Movie : Identifiable {

}
