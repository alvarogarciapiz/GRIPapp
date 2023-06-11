//
//  DataController.swift
//  GRIP
//
//  Created by Álvaro García Pizarro on 6/2/23.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "BD")
    
    init() {
        container.loadPersistentStores{description, error in
            if let error = error{
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
