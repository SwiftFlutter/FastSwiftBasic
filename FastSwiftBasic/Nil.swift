//
//  Nil.swift
//  FastSwiftBasic
//
//  Created by JK on 5/22/24.
//

import SwiftUI

struct Nil: View {

    var name: String = "Leeo"
    var petName: String?

    var name2: String = "Bami"
    var petName2: String = "coco"

    var body: some View {
        VStack {
            Text("이름은 \(name2) 펫네임은 \(petName2)입니다.")
        }

        .onAppear() {
            print("이름은 \(name) 펫네임은 \(petName)입니다.")
            print("이름은 \(name2) 펫네임은 \(petName2)입니다.")

        }
    }
}

#Preview {
    Nil()
}

