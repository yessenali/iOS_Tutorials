//
//  CustomTabView.swift
//  CustomMenu
//
//  Created by Yessenali Zhanaidar on 28.02.2022.
//

import SwiftUI

struct CustomTabView: View {
    @Binding var currentTab: String
    @Binding var showMenu: Bool
    
   
    var body: some View {
        
        VStack {
                // Static Header View for all Pages...
            HStack {
                
                // Menu Button...
                Button {
                    // Toggling menu option
                    withAnimation(.spring()) {
                        showMenu = true
                    }
                } label: {
                     Image(systemName: "line.3.horizontal.decrease")
                        .font(.title2)
                        .foregroundColor(.white)
                }
                
                // Hiding When Menu is Visible
                .opacity(showMenu ? 0 : 1)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image("Pic")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                        .cornerRadius(5)
                }


            }
            .overlay(
                Text(currentTab)
                    .font(.title2.bold())
                    .foregroundColor(.white)
                // Same Hiding When Menu is visible...
                    .opacity(showMenu ? 0 : 1)
            )
            .padding(.top)
            .padding([.horizontal, .top])
            .padding(.bottom,2)
            .padding(.top, getSafeArea().top)
            
            TabView(selection: $currentTab) {
                Text("Home")
                    .tag("Home")
                Text("Discover")
                    .tag("Discover")
                Text("Devices")
                    .tag("Devices")
                Text("Profile")
                    .tag("Profile")
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay(
            
            // Close Button
            Button {
                // Toggling menu option
                withAnimation(.spring()) {
                    showMenu = false
                }
            } label: {
                 Image(systemName: "xmark")
                    .font(.title2)
                    .foregroundColor(.white)
            }
            
            // Hiding When Menu is Visible
            .opacity(showMenu ? 1 : 0)
                .padding()
                .padding(.top)
            ,alignment: .topLeading
        )
        .background(
            Color.black
        )
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
