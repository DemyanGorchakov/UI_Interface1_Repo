//
//  SettingView.swift
//  UI_Interface1
//
//  Created by Демьян Горчаков on 01.03.2023.
//

import SwiftUI

struct SettingView: View {
    
    var staticValue: [CGFloat] = [100, 70, 130, 40, 110, 50,]

    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing: 25){
                VStack{
                    VStack{
                        VStack(alignment: .leading){
                            HStack(spacing: 100){
                                Text("Weekly dynamic")
                                    .fontWeight(.heavy)
                                    .font(.system(size: 20))
                                ButtonGear()
                            }
                            Text("Statics")
                        }
                        HStack(alignment: .bottom, spacing: 20) {
                            ForEach(staticValue, id: \.self) { item in
                                Static(heightStatic: item)
                            }
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color("MainGrey"))
                    .cornerRadius(10)
                }
                
                HStack{
                    VStack(alignment: .leading){
                        Text("Users")
                            .font(.system(size: 20))
                            .fontWeight(.black)
                        Text("Top 3")
                            .font(.system(size: 18))
                    }
                    Rectangle()
                        .frame(width: 200)
                        .foregroundColor(Color("Main"))
                }
                HStack(spacing: 30){
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
                        .shadow(color: .black.opacity(0.4), radius: 4, x: 2, y: 2)
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
                        ButtonEllipsis()
                            .padding(20)
                    }
                }
                .padding(.leading, 30)
                
                VStack{
                    Image("Image2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: .infinity, height: 180)
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
        }
        .padding()
        .background(Color("Main"))
    }
}

struct ButtonGear: View {
    
    var body: some View {
        
        Button {
//            <#code#>
        } label: {
            Image(systemName: "gearshape.fill")
                .foregroundColor(.black)
        }
    }
}

struct ButtonEllipsis: View {
    
    var body: some View {
        
        Button {
//            <#code#>
        } label: {
            Image(systemName: "ellipsis")
                .resizable()
                .frame(width: 35, height: 9)
                .foregroundColor(.black)
        }
    }
}

struct ImageTop: View {
    var imageTop: String
    var body: some View {
        HStack{
            Image(imageTop)
                .frame(width: 90)
                .clipShape(Circle())
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

struct Static: View {
    
    var heightStatic: CGFloat
    
    var body: some View {
        VStack(spacing: 15){
            Rectangle()
                .frame(width: 30, height: heightStatic)
                .cornerRadius(20)
            Circle()
                .frame(width: 30)
        }
        .foregroundColor(Color("Blue"))
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
