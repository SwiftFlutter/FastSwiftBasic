//
//  Sample.swift
//  FastSwiftBasic
//
//  Created by JK on 5/22/24.
//

import SwiftUI

struct Sample: View {

    let data = [
        Destination(direction: .north, food: "파스타맛집", image: Image(systemName: "carrot.fill")),
        Destination(direction: .east, food: nil, image: Image(systemName: "sunrise")), // food를 let으로 선언해서 food: nil이 필요함
        Destination(direction: .west, food: nil, image: Image(systemName: "balloon")),
        Destination(direction: .south, food: "순대맛집", image: Image(systemName: "cursorarrow.rays")),
    ]

    @State var selectedDestination: Destination?

    var body: some View {
        VStack {
            selectedDestination?.image
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)

            if let destination = selectedDestination {
                Text(destination.direction.rawValue)
                if let food = destination.food {
                    Text(food)
                }

            }



            Button(action: {
                selectedDestination = data.randomElement()
            }, label: {
                Text("돌려요")
            })
        }
    }
}


struct Destination {

    let direction: Direction
    let food: String?
    let image: Image

}




#Preview {
    Sample()
}
