//
//  cloudsApp.swift
//  clouds
//
//  Created by Dennis Wilkins on 11/11/22.
//

import SwiftUI
import Amphion



@main
struct cloudsApp: App {
    var ampionEnvironment = Amphion.Environment(network: Network(endpoint: URL(string: "https://swapi-graphql.netlify.app/.netlify/functions/index")!, onRequest: nil), store: Store());
    var body: some Scene {
        WindowGroup {
            FilmListView().environmentObject(ampionEnvironment)
        }
    }
}
