//
//  AirtagView.swift
//  DesignRemakes
//
//  Created by Florian Schweizer on 30.12.21.
//  Design from https://dribbble.com/shots/15910206-AirTag-App-Concept
//

import SwiftUI

struct AirtagView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Browse")
                .font(.system(.title, design: .rounded).weight(.semibold))
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Button { } label: {
                        Image(systemName: "plus.circle")
                            .font(.title)
                            .foregroundColor(.gray)
                    }
                    .padding(12)
                    .frame(height: 100)
                    .background(.white)
                    .cornerRadius(20)
                    .clipped()
                    .shadow(radius: 5)
                    .padding(8)
                    
                    Button {} label: {
                        VStack(spacing: 16) {
                            Text("Devices")
                                .font(.headline)
                            
                            Image(systemName: "iphone")
                                .font(.headline)
                        }
                        .foregroundColor(.white)
                    }
                    .padding(12)
                    .frame(width: 120, height: 100)
                    .background(.black)
                    .cornerRadius(20)
                    .padding(8)
                    .offset(y: -6)
                    
                    Button {} label: {
                        VStack(spacing: 16) {
                            Text("Items")
                                .font(.headline)
                            
                            Image(systemName: "arkit")
                                .font(.headline)
                        }
                        .foregroundColor(.gray)
                    }
                    .padding(12)
                    .frame(width: 120, height: 100)
                    .background(.white)
                    .cornerRadius(20)
                    .clipped()
                    .shadow(radius: 5)
                    .padding(8)
                    
                    Button {} label: {
                        VStack(spacing: 16) {
                            Text("Items")
                                .font(.headline)
                            
                            Image(systemName: "arkit")
                                .font(.headline)
                        }
                        .foregroundColor(.gray)
                    }
                    .padding(12)
                    .frame(width: 120, height: 100)
                    .background(.white)
                    .cornerRadius(20)
                    .clipped()
                    .shadow(radius: 5)
                    .padding(8)
                }
            }
            
            HStack {
                Text("Devices")
                    .font(.system(.title, design: .rounded).weight(.semibold))
                
                Text("8")
                    .font(.system(.title, design: .rounded))
                    .foregroundColor(.gray)
            }
            
            VStack(spacing: 24) {
                DevicePreview(title: "My Airpods Max", image: "airpodsmax")
                DevicePreview(title: "My Airpods Pro", image: "airpods")
                DevicePreview(title: "My Homepod", image: "homepod.and.homepodmini")
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .background(Color.gray.opacity(0.3))
    }
}

struct DevicePreview: View {
    let title: String
    let image: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.system(.title3, design: .rounded).weight(.semibold))
            
            HStack {
                Image(systemName: "car")
                Text("8 min")
                
                Image(systemName: "figure.walk")
                Text("13 min")
                
                Image(systemName: "battery.50")
                Text("41 %")
            }
            .font(.system(.footnote, design: .rounded))
            
            HStack(spacing: 8) {
                Button { } label: {
                    HStack {
                        Image(systemName: "play.circle.fill")
                            .foregroundColor(.blue)
                        
                        Text("Play sound")
                            .foregroundColor(.black)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(.gray.opacity(0.1))
                    .cornerRadius(20)
                }
                
                Button { } label: {
                    HStack {
                        Image(systemName: "location.circle.fill")
                            .foregroundColor(.cyan)
                        
                        Text("12.4 m")
                            .foregroundColor(.black)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(.gray.opacity(0.1))
                    .cornerRadius(20)
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.white)
        .cornerRadius(30)
        .overlay(alignment: .topTrailing) {
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
                .offset(x: -20, y: -35)
        }
    }
}

struct AirtagView_Previews: PreviewProvider {
    static var previews: some View {
        AirtagView()
    }
}
