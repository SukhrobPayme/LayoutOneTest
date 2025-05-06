//
//  TileView.swift
//  LayoutOne
//
//  Created by Sukhrob on 05/05/25.
//

import SwiftUI


struct TileView: View {
    
    var viewModel: TileViewModel
    
    var body: some View {
        RatioContainer{
            Image(systemName: "document.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: 89, alignment: .top)
                .layoutPriority(1)
                .padding()
            VStack(alignment: .center){
                Text(viewModel.title)
                    .font(.caption)
                    .foregroundColor(.primary)
                    .padding(.top, 7)
            }
        }
        .frame(width: 120, height: 120, alignment: .center)
        .shadow(color: Color.gray.opacity(0.4), radius: 5, x: 0, y: 3)
    }
}

struct TileView_Previews: PreviewProvider {
    static var previews: some View {
        TileView(
            viewModel: TileViewModel(
                title: "Мобильные операторы",
                imageURL: "star.fill"
            )
        )
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
