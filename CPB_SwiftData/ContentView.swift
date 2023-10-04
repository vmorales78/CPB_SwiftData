//
//  ContentView.swift
//  CPB_SwiftData
//
//  Created by Valerie Morales on 10/2/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var context
    @Query var information: [CollegeInformation]
    @State var nameEntered = ""
    @State var locationEntered = ""
    @State var numberOfStudentsEntered = 0
//    @State var URLEntered = URL(string: "")
    @State var URLEntered = ""
    
    var body: some View {
        VStack {
            TextField("add college name", text: $nameEntered)
            TextField("add location", text: $locationEntered)
            TextField("add number of students", value: $numberOfStudentsEntered, format: .number)
            
//            TextField("enter URL", value: $URLEntered, format: .url)
            TextField("add college URL", text: $URLEntered)
            
            Button(action: {
                print("here")
//                guard let aURL = URLEntered else { return }
                print("1")
                let collegeInformationn =
                CollegeInformation(name: nameEntered, location: locationEntered, numberOStudents: numberOfStudentsEntered, theURL: URLEntered)
                print("2")
                context.insert(collegeInformationn)
                print("3")
                nameEntered = ""
                locationEntered = ""
                numberOfStudentsEntered = 0
//                URLEntered = URL(string: "")
                URLEntered = ""
                print("4")
                
            }, label: {
                Text("Button")
            })
            List {
                ForEach(information) { theInformation in
                    Text(theInformation.name)
                    Text(theInformation.location)
//                    Text(theInformation.numberOfStudents)
//                    Text(theInformation.theURL)
                } 
//                .onDelete(perform: )
//                    context.delete())
                    
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
