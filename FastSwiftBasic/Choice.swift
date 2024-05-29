//
//  Choice.swift
//  FastSwiftBasic
//
//  Created by JK on 5/22/24.
//

import SwiftUI

struct Choice: View {

    var direction: Direction = .north
    var member: Member = Member.bami
    var menu: Menu = .steak("레어")
    var menu2: Menu = .pasta(5)


    var body: some View {
        Text("방향은 \(direction.rawValue)쪽 입니다")
    }
}

enum Member: String {
    case leeo, tom, bami, koko
}

enum Menu {
    case pasta(Int)
    case pizza
    
    case steak(String)
}

enum Direction: String {
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
    case myWay
}

#Preview {
    Choice()
}
