//
//  Option.swift
//  FastSwiftBasic
//
//  Created by JK on 5/22/24.
//

import SwiftUI

struct Option: View {

    var leeo: People? = People(name: "Leeo", mbti: MBTI(name: "ENFP"))
    var bami = People(name: "bami", petName: "coco")
    var berry = People(name: "berry")

    var body: some View {
        if let leeoMbtiName = leeo?.mbti?.name {
            Text(leeoMbtiName)
        } else {
            Text("No MBTI name")
        }

        if let petName = bami.petName {
            Text("이름은 \(bami.name) 애완동물 이름은 \(petName)")
        }

        if let petName = berry.petName {
            Text("이름은 \(berry.name) 애완동물 이름은 \(petName)")
        }
    }
}

struct People {
    let name: String
    var petName: String?
    var mbti: MBTI?
}

struct MBTI {
    let name: String?
}

#Preview {
    Option()
}
