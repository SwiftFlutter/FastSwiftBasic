//
//  Half.swift
//  FastSwiftBasic
//
//  Created by JK on 5/20/24.
//

import SwiftUI

struct Half: View {

    var name: String = "리이오"
    var age: Int = 20

    var body: some View {

        VStack {
            HStack {
                Text("\(name)입니다")
                Image(systemName: "pencil")

            }
        }
        Text("안녕하세요 \(age)살의 \(name)!")

    }
}

#Preview {
    Half()
}
