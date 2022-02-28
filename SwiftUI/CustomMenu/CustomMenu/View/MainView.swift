//
//  MainView.swift
//  CustomMenu
//
//  Created by Yessenali Zhanaidar on 27.02.2022.
//

import SwiftUI

struct MainView: View {
    
    // Current tab...
    @State var currentTab: String = "Home"
    
    // Menu Option
    @State var showMenu: Bool = false
    
    // Hiding Native Tab Bar ...
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
       
        ZStack {
            //  Custom Side Menu
            SideMenu(currentTab: $currentTab)
            
            // Main tab View
            CustomTabView(currentTab: $currentTab, showMenu: $showMenu)
            
            // Applying cornerRadius...
                .cornerRadius(showMenu ? 25 : 0)
            
            // Making 3D rotation
                .rotation3DEffect(.init(degrees: showMenu ? -15 : 0), axis: (x: 0, y: 1, z: 0), anchor: .trailing)
            
            // Moving view Apart...
                .offset(x: showMenu ? getRect().width / 2 : 0)
                .ignoresSafeArea()
        }
        // Always dark mode ...
        .preferredColorScheme(.dark)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


extension View {
    func getSafeArea() -> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .zero
        }
        
        guard let safeArea = screen.windows.first?.safeAreaInsets
        else  {
            return .zero
        }
        
        return safeArea 
    }
}
