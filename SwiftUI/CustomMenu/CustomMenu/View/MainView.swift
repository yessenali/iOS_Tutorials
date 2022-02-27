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
     
    var body: some View {
       
        
        
        ZStack {
            //  Custom Side Menu
            SideMenu(currentTab: $currentTab)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
