//
//  ContentView.swift
//  MinimalSwiftPackageCenteredProjectSample
//
//  Created by ruwatana on 2024/07/21.
//

import SwiftUI

public struct ContentView: View {
    public var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
    
    public init() {}
}

#Preview {
    ContentView()
}
