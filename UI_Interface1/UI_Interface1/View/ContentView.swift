//
//  ContentView.swift
//  UI_Interface1
//
//  Created by Демьян Горчаков on 22.02.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var selection: String = "House"
    var views = ["House", "Box", "User"]
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom){
            
            TabView(selection: $selection) {
                HomeView()
                    .tag("House")
                SettingView()
                    .tag("Box")
                Text("UserView")
                    .tag("User")
            }
            HStack{
                ForEach(views, id: \.self) { view in
                    Spacer()
                    CustomTabView(currentTab: $selection, image: view)
                    Spacer()
                }
            }
            .padding(.vertical, 15)
            .padding(.horizontal, 23)
            .background(.white)
            .clipShape(Capsule())
            .shadow(color: Color.black.opacity((0.3)), radius: 10, x: 4, y: 4)
            .frame(width: 200)
            
        }
    }
}

struct CustomTabView: View {
    
    @Binding var currentTab: String
    
    var image: String
    
    var body: some View {
        Button {
            currentTab = image
        } label: {
            Image(image)
                .resizable()
                .frame(width: 21, height: 21)
                .opacity(currentTab == image ? 1 : 0.3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
