//
//  DataPersistenceApp.swift
//  Shared
//
//  Created by KxCoding on 2022/03/15.
//

import SwiftUI

@main
struct DataPersistenceApp: App {
    let manager = CoreDataManager.shared

    var body: some Scene {
        WindowGroup {
            MainList()                
        }
        #if os(macOS)
        .windowStyle(.hiddenTitleBar)
        #endif
    }
}
