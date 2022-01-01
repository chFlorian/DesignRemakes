//
//  BankingView.swift
//  DesignRemakes
//
//  Created by Florian Schweizer on 01.01.22.
//  Design from https://dribbble.com/shots/17035580-Easy-finance-mobile-app
//

import SwiftUI

struct BankingView: View {
    var body: some View {
        VStack {
            header
            
            Spacer()
            
            HStack(spacing: 8) {
                AccountView()
                AccountView()
            }
            .padding(.horizontal)
            
            Spacer()
            
            HStack(spacing: 8) {
                Text("Latest")
                    .font(.headline)
                
                Rectangle()
                    .fill(.gray)
                    .frame(height: 4)
            }
            .padding([.horizontal, .top])
            
            VStack {
                PersonView()
                PersonView()
                PersonView()
            }
            
            Spacer()
            
            Rectangle()
                .fill(.black)
                .frame(height: 60)
                .overlay(
                    Text("Continue")
                        .font(.title2)
                        .foregroundColor(.white)
                )
                .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray.opacity(0.1))
    }
    
    var header: some View {
        HStack {
            Image(systemName: "plus.magnifyingglass")
                .foregroundColor(.white)
                .padding(8)
                .background(.black, in: Circle())
            
            Spacer()
            
            Image(systemName: "circle.grid.2x2.fill")
        }
        .font(.largeTitle)
        .padding(.horizontal)
    }
}

struct AccountView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Circle()
                .trim(from: 0, to: 0.75)
                .stroke(.purple, lineWidth: 6)
                .frame(width: 60)
                .overlay {
                    Circle()
                        .stroke(.purple, lineWidth: 2)
                        .frame(width: 60)
                }
                .rotationEffect(.degrees(-90))
                .overlay {
                    Text("58%")
                        .fontWeight(.semibold)
                }
            
            Text("DIS Invest")
                .font(.headline)
                .foregroundColor(.gray)
            
            Text("$6,000")
                .font(.title)
                .fontWeight(.semibold)
            
            Text("Virtual Assistent")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
        .frame(height: 200)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.white)
    }
}

struct PersonView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading) {
                Text("Terry Mango")
                    .font(.headline)
                
                Text("Today")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Image(systemName: "arrowtriangle.down.fill")
                .offset(y: 2)
        }
        .padding()
    }
}

struct BankingView_Previews: PreviewProvider {
    static var previews: some View {
        BankingView()
    }
}
