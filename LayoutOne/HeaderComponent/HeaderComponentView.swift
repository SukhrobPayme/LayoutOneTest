//
//  HeaderComponentView.swift
//  LayoutOne
//
//  Created by Sukhrob on 06/05/25.
//

import SwiftUI

struct HeaderComponentView: View {
    var viewModel: HeaderComponentModelView
    var onButtonTap: () -> Void  // callback

    var body: some View {
        HStack {
            Text(viewModel.title)
                .font(.headline)
                .padding(.leading)
                .padding(.bottom, 5)

            Spacer()

            Button(action: {
                onButtonTap()
            }) {
                Text("Все")
                    .font(.headline)
                    .padding(.trailing)
                    .padding(.bottom, 5)
            }
        }
        .frame(width: 200, alignment: .leading)
    }
}



#Preview {
    HeaderComponentView(viewModel: HeaderComponentModelView(title: "Something"), onButtonTap: {
        print("Button tapped!")
    })
}
