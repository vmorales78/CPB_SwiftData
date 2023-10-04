//
//  AddingInfoView.swift
//  CPB_SwiftData
//
//  Created by Valerie Morales on 10/2/23.
//
//import SwiftUI
//import SwiftData

//struct AddingInfo: View {
//    @Environment(\.modelContext) var context
//    @Query var information: [CollegeInformation]
//    @State var nameEntered = ""
//    @State var locationEntered = ""
//    @State var numberOfStudentsEntered = 0
//    @State var URLEntered = URL(string: "")
//    var body: some View {
//        VStack {
//            TextField("add college name", text: $nameEntered)
//            TextField("add location", text: $locationEntered)
//            TextField("add number of students", value: $numberOfStudentsEntered, format: .number)
//            TextField("enter URL", value: $URLEntered, format: .url)
//            Button(action: {
//                guard let aURL = URLEntered else { return }
//                let collegeInformationn = CollegeInformation(name: nameEntered, location: locationEntered, numberOStudents: numberOfStudentsEntered, theURL: aURL)
//                context.insert(collegeInformationn)
//                
//            }, label: {
//                Text("Button")
//            })
//        }
//    }
//}
