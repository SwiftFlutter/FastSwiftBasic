//
//  Exception.swift
//  FastSwiftBasic
//
//  Created by JK on 5/29/24.
//

import SwiftUI

struct Exception: View {

    @State var inputNumber = ""
    @State var resultNumber: Float = 0

    var body: some View {
        VStack {
            TextField("나눌 숫자를 입력해주세요", text: $inputNumber)
            Text("나눈 결과는 다음과 같아요 \(resultNumber)")

            Button(action: {
                do {
                    try resultNumber = devideTen(with: Float(inputNumber) ?? 1.0)
                }
                catch DivideError.dividedByZero {
                    print("0으로 나누었대요")
                    inputNumber = "잘못된 입력입니다!"
                }
                catch {
                    print(error.localizedDescription)
                }


            }, label: {
                Text("나누기 ")
            })

        }
    }

    func devideTen(with inputNumber: Float) throws -> Float {

        var result: Float = 0
        if inputNumber == 0 {
            throw DivideError.dividedByZero
        }else {
            result = 10 / inputNumber
        }


        return result

    }


}

enum DivideError: Error {
    case dividedByZero
}

#Preview {
    Exception()
}

