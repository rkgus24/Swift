//
//  ForecaseView.swift
//  weather
//
//  Created by 노가현 on 1/11/24.
//

import SwiftUI

struct ForecaseView: View {
    var time: String
    var imageName: String
    var celcius: CGFloat
    
    var body: some View {
        VStack {
            Text(time)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .font(.title3)
                .symbolVariant(/*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .symbolRenderingMode(.multicolor)
                .frame(height:30)
            
            Text("\(Int(celcius))°")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    ForecaseView(time: "지금", imageName: "cloud.sun", celcius: 13)
}
