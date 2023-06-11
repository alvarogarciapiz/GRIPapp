//
//  GRIPApp.swift
//  GRIP
//
//  Created by Álvaro García Pizarro on 2/2/23.
//

import SwiftUI

@main
struct GRIPApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            TabsView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
