// Created by Florian Schweizer on 14.10.22

import SwiftUI

struct AbstractInvestingView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("FINTIMES")
                    .font(.title2)
                    .fontWeight(.black)
                
                Spacer()
                
                Image(systemName: "line.3.horizontal")
                    .font(.title)
            }
            .padding()
            .padding(.top, 64)
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text("Everything")
                    .foregroundStyle(.thinMaterial)
                
                Text("about investing plus way more.")
            }
            .font(.largeTitle.weight(.semibold))
            .padding()
            
            Spacer()
            
            Spacer()
            
            Rectangle()
                .frame(height: 8)
            
            HStack(spacing: 0) {
                Spacer()
                
                Text("Become our member")
                    .padding()
                
                Spacer()
                
                Rectangle()
                    .frame(width: 8, height: 60)
                
                Image(systemName: "plus")
                    .frame(width: 60, height: 60)
                    .background(.white)
            }
            .font(.title2.weight(.semibold))
        }
        .ignoresSafeArea()
        .background {
            LinearGradient(colors: [.green, .yellow],
                           startPoint: .top,
                           endPoint: .bottom)
            .ignoresSafeArea()
        }
    }
}

struct AbstractInvestingView_Previews: PreviewProvider {
    static var previews: some View {
        AbstractInvestingView()
    }
}
