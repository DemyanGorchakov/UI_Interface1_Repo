//
//  HomeView.swift
//  UI_Interface1
//
//  Created by Демьян Горчаков on 22.02.2023.
//

import SwiftUI

struct HomeView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        ScrollView{
            VStack(spacing: 25){
                HStack{
                    Image(systemName: "magnifyingglass")
                    TextField("Поиск", text: $searchText)
                }
                .padding(13)
                .background(.white)
                .clipShape(Capsule())
                .padding(.horizontal, 15)
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 13){
                        ScrollCard(image: "Image1", text: "Title1")
                        ScrollCard(image: "Image2", text: "Title2")
                        ScrollCard(image: "images3", text: "Title3")
                        ScrollCard(image: "images4", text: "Title3")
                    }
                    .shadow(color: .black.opacity(0.3), radius: 4, x: 2, y: 2)

                    .padding(.horizontal, 15)
                    
                }
                
                VStack(alignment: .leading, spacing: 12){
                    VStack(alignment: .leading){
                        Text("Title unit")
                            .fontWeight(.black)
                        Text("Text unit")
                    }
                    
                    
                    HStack(spacing: 10){
                        PeopleImages(peopleImage: "f1")
                        PeopleImages(peopleImage: "f2")
                        PeopleImages(peopleImage: "f3")
                        PeopleImages(peopleImage: "f4")
                        PeopleImages(peopleImage: "f5")
                        
                        Button {
                            //
                        } label: {
                            ZStack{
                                Circle()
                                    .frame(width: 44)
                                    .foregroundColor(.white)
                                Circle()
                                    .frame(width: 40)
                                    .foregroundColor(Color("Blue"))
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    Divider()
                    HStack{
                        Text("Total")
                        Text("$341")
                            .fontWeight(.bold)
                    }
                }
                .padding(20)
                .background(Color("Blue"))
                .cornerRadius(20)
                .padding(.horizontal, 15)
                .foregroundColor(.white)
                .shadow(color: .black.opacity(0.3), radius: 4, x: 2, y: 2)

            }
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    Cards(pngImage: "wind", textElement: "Element 1", someText: "Same text", color: "Blue")
                    Cards(pngImage: "homekit", textElement: "Element 2", someText: "Same text", color: "Orange")
                    Cards(pngImage: "tornado", textElement: "Element 3", someText: "Same text", color: "Red")
                }
                .padding(.horizontal)
                .shadow(color: .black.opacity(0.3), radius: 4, x: 2, y: 2)
            }
            .padding(.top, 5)
        }
        .frame(width: .infinity, height: .infinity)
        .background(Color("Main"))
    }
}

struct ScrollCard: View {
    
    var image: String
    var text: String
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)){
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width / 1.8, height: 100)
            Text(text)
                .foregroundColor(.white)
                .fontWeight(.black)
                .offset(x: 20, y: -20)
        }
        .cornerRadius(20)
    }
}

struct PeopleImages: View {
    
    var peopleImage: String
    
    var body: some View {
        Image(peopleImage)
            .resizable()
            .scaledToFill()
            .frame(width: 44, height: 44)
            .clipShape(Circle())
            .shadow(color: .black.opacity(0.3), radius: 4, x: 2, y: 2)
    }
}

struct Cards: View {
    
    var pngImage: String
    var textElement: String
    var someText: String
    var color: String
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Image(systemName: pngImage)
                Text(textElement)
                    .fontWeight(.black)
                Text(someText)
                    .padding(.trailing, 20)
            }
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.width / 3, height: 120)
            .background(Color(color))
            .cornerRadius(20)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
