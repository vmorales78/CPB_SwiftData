//
//  CollegeInfo.swift
//  CPB_SwiftData
//
//  Created by Valerie Morales on 10/2/23.
//

import SwiftUI
import SwiftData
@Model
class CollegeInformation {
    var name: String
    var location : String
    var numberOfStudents : Int
//    var theURL : URL
    var theURL : String
    
    
    init(name: String, location: String, numberOStudents: Int, theURL: String) {
        self.name = name
        self.location = location
        self.numberOfStudents = numberOStudents
        self.theURL = theURL
    }
}
