//
//  SandwichDetail.swift
//  Sandwiches
//
//  Created by Barry Martin on 6/23/20.
//

import SwiftUI

struct SandwichDetail: View {
    let sandwich: Sandwich
    @State private var isZoomed = false
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            Image(sandwich.imageName)
                .resizable()
                .aspectRatio(contentMode: isZoomed ?  .fill : .fit)
                .onTapGesture {
                    withAnimation() {
                        isZoomed.toggle()
                    }
                }
            
            Spacer(minLength: 0)
            
            if sandwich.isSpicy && !isZoomed {
                HStack {
                    Spacer()
                    
                    Image(systemName: "flame.fill")
                    Text("Spicy")
                                    
                    // MARK: - bug?
                    // Label put the image higher than the text
                    // so used Text and Image instead
                    //Label("Spicy", systemImage: "flame.fill")
                    Spacer()
                        
                }
                .padding(.all)
                .font(Font.headline.smallCaps())
                .background(Color.red)
                .foregroundColor(.yellow)
                .transition(.move(edge: .bottom))
            }
        }
        .navigationTitle(sandwich.name)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
    }
}

struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                SandwichDetail(sandwich: testData[0])
            }
            NavigationView {
                SandwichDetail(sandwich: testData[1])
            }
        }
    }
}
