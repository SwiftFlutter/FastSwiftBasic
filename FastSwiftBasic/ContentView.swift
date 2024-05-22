//
//  ContentView.swift
//  FastSwiftBasic
//
//  Created by JK on 5/4/24.
//

import SwiftUI

struct ContentView: View {

    var place: String = "Tokyo"

    var body: some View {
        VStack { // vertical stack
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(place)에 가고싶다")
            Text(place)
            Text(place)
            Text("Tokyo")
            

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
