//
//  VarialbeType.swift
//  FastSwiftBasic
//
//  Created by JK on 5/4/24.
//

import SwiftUI

struct VarialbeType: View {

    var name: String = "iOS"
    var age: Int = 20
    var height: Float = 181.3
    var havePet: Bool = false

    //배열
    let data: [String] = [ "eggs", "flower"]
    //data[0]

    //집합, 같은 요소들은 제거, 순서가없음
    let musics: Set<String> = ["Rock", "Jazz", "Classical"]

    //Dictionary
    //var dict - [키: 밸류]

    var dict = ["XYZ": "Toronto Pearson"]
    // dict["XYZ"]  이건 "Toronto Pearson"







    var body: some View {
        VStack {
            Text("10")
            Text("\(name)")
            Text("\(age)")
            Text("\(height)")
            Text("\(havePet.description)")


        }

    }
}

#Preview {
    VarialbeType()
}
