//
//  Half1.swift
//  FastSwiftBasic
//
//  Created by JK on 5/21/24.
//

import SwiftUI

struct Half1: View {
    var body: some View {

        var names: [String] = ["리이오", "존", "바미", "테리우스"]

        List {
            ForEach(names, id: \.self) { name in
                var welcome = sayHi(to: name)
                if name == "리이오" {
                    Text("기다렸어요. \(welcome)")

                } else {
                    Text(welcome)

                }

            }
        }

    }
    func sayHi(to name: String) -> String {
        return "\(name)님 안녕하세요."
    }
}



#Preview {
    Half1()
}
