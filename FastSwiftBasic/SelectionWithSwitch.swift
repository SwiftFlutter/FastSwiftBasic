//
//  SelectionWithSwitch.swift
//  FastSwiftBasic
//
//  Created by JK on 5/22/24.
//

import SwiftUI

struct SelectionWithSwitch: View {

    @State var myDirection: Direction = .south

    var body: some View {
        switch myDirection {
            case .north:
                Text("\(myDirection.rawValue)쪽은 추워요")
            case .west:
                Text("\(myDirection.rawValue)쪽은 석양이 예뻐요")
            case .east:
                Text("\(myDirection.rawValue)쪽으로 해 보러 갈래요?")
            case .south:
                Text("\(myDirection.rawValue)쪽으로 쉬러가요")
            default:
                Text("에러입니다")
        }

        Button(action: {

            switch myDirection {
                case .north, .west:
                    myDirection = .east

                case .east:
                    myDirection = .south

                default:
                    myDirection = .north
            }

        }, label: {
            Text("돌리기")
        })
    }
}





#Preview {
    SelectionWithSwitch()
}
