//
//  CalendarView.swift
//  DesignRemakes
//
//  Created by Florian Schweizer on 22.02.22.
//  Design from https://dribbble.com/shots/15571949/attachments/7356584?mode=media
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            topBar
            
            monthBar
                .padding(.horizontal)
            
            HStack(spacing: 0) {
                DayBox(date: 12, day: "Wed", isSelected: true)
                Spacer()
                DayBox(date: 13, day: "Thu", isSelected: false)
                Spacer()
                DayBox(date: 14, day: "Fri", isSelected: false)
                Spacer()
                DayBox(date: 15, day: "Sat", isSelected: false)
            }
            .padding(.horizontal)
            
            Text("Ongoing")
                .font(.title)
                .fontWeight(.bold)
            
            ScrollView {
                HStack {
                    VStack(alignment: .trailing) {
                        ForEach(7...12, id: \.self) { hour in
                            Text("\(hour) AM")
                                .frame(height: 64)
                        }
                    }
                    .foregroundColor(.secondary)
                    
                    VStack {
                        CalendarEvent()
                        
                        HStack(spacing: 0) {
                            Circle()
                                .fill(.red)
                                .frame(width: 8, height: 8)
                                .padding(4)
                                .background(Circle().fill(.white))
                                .clipped()
                                .shadow(radius: 3)
                            
                            VStack {
                                Divider()
                                    .frame(height: 2)
                                    .background(.red)
                            }
                        }
                        
                        CalendarEvent()
                        CalendarEvent()
                    }
                }
            }
        }
        .padding(.horizontal)
        .background(Color.blue.opacity(0.05).ignoresSafeArea())
    }
    
    private var monthBar: some View {
        HStack {
            Button { } label: {
                HStack {
                    Image(systemName: "arrow.left")
                        .foregroundColor(.gray)
                    
                    Text("Sep")
                        .foregroundColor(.primary)
                }
            }
            
            Spacer()
            
            Text("October")
                .font(.title)
                .fontWeight(.semibold)
            
            Spacer()
            
            Button { } label: {
                HStack {
                    Text("Nov")
                        .foregroundColor(.primary)
                    
                    Image(systemName: "arrow.right")
                        .foregroundColor(.gray)
                }
            }
        }
    }
    
    private var topBar: some View {
        HStack {
            Button { } label: {
                Image(systemName: "arrow.left")
                    .font(.body.bold())
                    .frame(width: 40, height: 40)
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray)
                    }
                    .foregroundColor(.primary)
            }
            
            Spacer()
            
            Image(systemName: "person.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
        }
    }
}

struct CalendarEvent: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Mobile App Design")
                .font(.headline)
            
            Text("Mike and anita")
                .font(.subheadline)
            
            Spacer()
            
            HStack {
                Image(systemName: "person.circle.fill")
                    .font(.title)
                Image(systemName: "person.circle.fill")
                    .font(.title)
                    .offset(x: -16)
                
                Spacer()
                
                Text("9.00 AM - 10.00 AM")
                    .font(.caption)
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .frame(height: 128)
        .background {
            RoundedRectangle(cornerRadius: 32)
                .fill(.blue)
        }
        .foregroundColor(.white)
        .padding(.leading)
    }
}

struct DayBox: View {
    let date: Int
    let day: String
    let isSelected: Bool
    
    var body: some View {
        VStack {
            Text("\(date)")
                .font(.title)
                .fontWeight(.semibold)
            
            Text(day)
                .fontWeight(.light)
        }
        .frame(width: 72, height: 100)
        .background {
            RoundedRectangle(cornerRadius: 32)
                .fill(isSelected ? Color.blue : Color.white)
        }
        .foregroundColor(isSelected ? Color.white : Color.blue)
        .clipped()
        .shadow(color: Color.blue.opacity(0.3), radius: isSelected ? 0 : 3)
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
