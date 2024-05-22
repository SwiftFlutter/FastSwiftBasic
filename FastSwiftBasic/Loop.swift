//
//  Loop.swift
//  FastSwiftBasic
//
//  Created by JK on 5/20/24.
//

import SwiftUI

struct Loop: View {

    let names: [String] = ["리이오", "리이사", "리이육", "리이칠", "리이팔"]

    var body: some View {
        VStack{
            ForEach(names, id: \.self) { item in
                Text(item)
            }

            ForEach(names, id: \.self) { item in
                Text(item)
            }
        }
    }
}

#Preview {
    Loop()
}
