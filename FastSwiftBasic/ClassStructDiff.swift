//
//  ClassStructDiff.swift
//  FastSwiftBasic
//
//  Created by JK on 5/21/24.
//

import SwiftUI

struct ClassStructDiff: View {

    let myCar = Car(name: "리어카", owner: "리이오")

    @ObservedObject var myKar = Kar(name: "리어카2", owner: "리이오2")

    @State var name: String = ""

    var body: some View {
        VStack {
            Text("\(myCar.name)의 주인은 \(myCar.owner)입니다")
            Text("\(myKar.name)의 주인은 \(myKar.owner)입니다")

            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $name)
            Button(action: {

                var broCar = myCar
                broCar.name = "동생차"
                broCar.owner = "동생"

                myCar.sayHi()
                broCar.sayHi()

                var bro1Car = myKar
                bro1Car.name = "동생차"
                bro1Car.owner = "동생"

                myCar.sayHi()
                bro1Car.sayHi()
            }, label: {
                Text("출발")
            })

        }

    }
}


struct Car {
    var name: String
    var owner: String

    func sayHi() {
        print("hi \(owner)")
    }
}

class Kar: ObservableObject {
    @Published var name: String
    var owner: String

    func sayHi() {
        print("hi \(owner)2")
    }

    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
}


#Preview {
    ClassStructDiff()
}
