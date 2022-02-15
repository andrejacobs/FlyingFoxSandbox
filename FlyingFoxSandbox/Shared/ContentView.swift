//
//  ContentView.swift
//  Shared
//
//  Created by André Jacobs on 15/02/2022.
//

import SwiftUI
import FlyingFox

struct ContentView: View {
    var body: some View {
        if #available(macOS 12.0, *) {
            Text("Hello, world!")
                .padding()
                .task {
                    let server = HTTPServer(port: 8080)
                    try! await server.start()
                }
        } else {
            Text("Todo")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
