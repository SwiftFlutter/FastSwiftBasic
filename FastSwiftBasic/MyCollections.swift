//
//  MyCollections.swift
//  FastSwiftBasic
//
//  Created by JK on 5/4/24.
//

import SwiftUI

struct MyCollections: View {

    var foods: [String] = ["eggs", "bananas", "beans"]
    var sports: Set<String> = ["football", "baseball", "basketball"]
    var animal: Set<String> = ["dog", "cat", "bird"]
    var koEngDict: [String:String] = ["사과": "Apple", "바나나": "Banna"]



    var body: some View {
        VStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })

            Text(koEngDict["사과"]!)

            Text(foods[0])


        }


    }
}

#Preview {
    MyCollections()
}
