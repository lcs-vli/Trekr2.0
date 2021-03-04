//
//  AddCountry.swift
//  Trekr2.0
//
//  Created by Li, Muchen on 2021/3/3.
//

import SwiftUI

struct AddCountry: View {
    // Get a reference to the store of tasks (TaskStore)
    @ObservedObject var store: LocationStore
    
    // Details of the new task
    @State private var name = ""
    @State private var country = ""
    @State private var rating = ""
    @State private var description = ""
    @State private var latitude = 0.0
    @State private var longitude = 0.0
    
    // Whether to show this view
    @Binding var showing: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("Description", text: $description)
                    
                    Picker("Priority", selection: $priority) {
                        Text(TaskPriority.low.rawValue).tag(TaskPriority.low)
                        Text(TaskPriority.medium.rawValue).tag(TaskPriority.medium)
                        Text(TaskPriority.high.rawValue).tag(TaskPriority.high)
                    }
                    .pickerStyle(SegmentedPickerStyle())

                }
            }
            .navigationTitle("New Reminder")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Save") {
                        saveTask()
                    }
                }
            }
        }
    }
    
    func saveTask() {
        
        // Add the task to the list of tasks
        store.tasks.append(Task(description: description,
                                priority: priority,
                                completed: false))
        
        // Dismiss this view
        showing = false

    }

}

struct AddCountry_Previews: PreviewProvider {
    static var previews: some View {
        AddCountry(store: testStore, showing: .constant(true))
    }
}

