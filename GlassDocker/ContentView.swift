//
//  ContentView.swift
//  GlassDocker
//
//  Created by Zelyna Sillas on 9/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image(.background)
                .resizable()
                .blur(radius: 8)
                .padding(-12)
                .ignoresSafeArea()
            
            
            VStack {
                Spacer()
                
                VStack {
                    Rectangle()
                        .fill(.border.opacity(0.1))
                }
                .frame(width: 320, height: 60)
                .background {
                    GlassBlurView(removeAllFilters: false)
                }
                .border(LinearGradient(gradient: Gradient(colors: [.border.opacity(0.4), .border.opacity(0.6)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .background {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(.white.opacity(0.1), lineWidth: 20)
                }
                .cornerRadius(10)
                .rotation3DEffect(.degrees(55), axis: (x: 1, y: 0, z: 0))
                .shadow(color: .border, radius: 0, x: 0, y: 1)
                .shadow(color: .border, radius: 0, x: 0, y: 1)
                .shadow(color: .border, radius: 0, x: 0, y: 1)
                .shadow(color: .border, radius: 0, x: 0, y: 1)
                    .overlay {
                        HStack(spacing: 35) {
                            Button {
                            } label: {
                                ZStack {
                                    Image("phone")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 35, height: 55)
                                    
                                    iconShadow
                                }
                            }
                            
                            Button {
                            } label: {
                                ZStack {
                                    Image("safari")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 35, height: 55)
                                    
                                    iconShadow
                                }
                            }
                            
                            Button {
                            } label: {
                                ZStack {
                                    Image("mail")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 35, height: 56)
                                    
                                    iconShadow
                                }
                            }
                            
                            Button {
                            } label: {
                                ZStack {
                                    Image("music")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 35, height: 50)
                                        .padding(.top, 2)
                                    
                                    iconShadow
                                }
                            }
                        }
                        .offset(y: -33)
                    }
            }
        }
    }
    
    var iconShadow: some View {
        Rectangle()
            .fill(.black.opacity(0.2))
            .frame(width: 40, height: 10)
            .blur(radius: 8)
            .cornerRadius(8)
            .rotation3DEffect(.degrees(55), axis: (x: 1, y: 0, z: 0))
            .offset(y: 38)
    }
    
}
#Preview {
    ContentView()
}
