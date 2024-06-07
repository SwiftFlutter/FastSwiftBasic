//
//  MyCar.swift
//  FastSwiftBasic
//
//  Created by JK on 6/7/24.
//

import SwiftUI

protocol Drivable {
    func speedDown(with speed: Int) -> Int
}

struct MyCar: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    MyCar()
}
