//
//  SettingView.swift
//  UI_Interface1
//
//  Created by Демьян Горчаков on 01.03.2023.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .leading){
                VStack{
                    VStack{
                        HStack{
                            Text("Week dynamics")
                                .font(.system(size: 20))
                                .fontWeight(.black)
                                .padding(.trailing, 80)
                            Image(systemName: "gearshape.fill")
                        }
                        .padding(.top,30)
                        VStack{
                            Text("Statics")
                                .tracking(2)
                                .padding(.trailing,197)
                            VStack{
                                Image("Column")
                                    .resizable()
                                    .frame(height: UIScreen.main.bounds.height / 4)
                            }
                        }
                    }
                    .background(Color("MainGrey"))
                    .cornerRadius(20)
                    Spacer()
                }
                VStack(alignment: .leading){
                    Text("Users")
                        .font(.system(size: 20))
                        .fontWeight(.black)
                    Text("Top 3")
                        .font(.system(size: 18))
                }
                .padding(30)
            }
            HStack(alignment: .top){
                ImageTop(imageTop: "f3")
                ImageTop(imageTop: "f5")
                ImageTop(imageTop: "f1")
            }
            HStack{
                Text("Show all")
                    .foregroundColor(.white)
                    .padding(.horizontal, 60)
                    .padding(10)
                    .background(Color("Red"))
                    .cornerRadius(30)
                    .padding(40)
            }
            HStack{
                Image("f3")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                VStack(alignment: .leading){
                    Text("User name")
                        .fontWeight(.black)
                    Text("login")
                }
                Spacer()
                VStack{
                    Image(systemName: "ellipsis")
                        .resizable()
                        .frame(width: 30, height: 8)
                        .padding(20)
                }

            }
            .padding(.leading, 30)
            VStack{
                Image("images4")
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(20)
                HStack{
                    ButtonCount()
                    Rectangle()
                    .frame(width: 40)
                    .foregroundColor(Color("Main"))
                    Image(systemName: "ellipsis.message")
                    Text("2.3k")
                        .padding(.trailing, 130)
                }
            }
        }
        .padding()
        .background(Color("Main"))
    }
}

struct ImageTop: View {
    var imageTop: String
    var body: some View {
        HStack{
            Image(imageTop)
                .clipShape(Circle())
                .padding(-10)
                .shadow(color: .black.opacity(0.3), radius: 4, x: 2, y: 2)
        }
    }
}

struct ButtonCount: View {
    
    @State var counter = 0
    
    var body: some View {
        HStack{
            Button {
                counter += 1
            } label: {
                HStack{
                    Image(systemName: "heart")
                    Text("\(counter)")
                }
                .foregroundColor(.black)
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
