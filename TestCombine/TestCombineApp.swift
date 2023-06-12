//
//  TestCombineApp.swift
//  TestCombine
//
//  Created by Yery Castro on 17/2/23.
//

import SwiftUI

@main
struct TestCombineApp: App {
    
    var modelo = Modelo()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelo)
        }
    }
}
