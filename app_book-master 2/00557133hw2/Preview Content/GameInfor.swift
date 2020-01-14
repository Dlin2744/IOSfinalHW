//
//  GameInfor.swift
//  hw2
//
//  Created by User02 on 2019/10/18.
//  Copyright © 2019 User02. All rights reserved.
//

import SwiftUI

struct GameInfor: View {
    @State private var scale:CGFloat = 1
    @State private var likeScale:CGFloat = 1
    @State private var newScale:CGFloat = 1
    @State private var degree:Double = 0
    @State private var newdegree:Double = 0
    var game: image
    var body: some View {
        VStack(){
            ScrollView(.vertical){
            Group{
                Image(game.name)
                    .resizable()
                    .scaledToFill()
                    .frame(width:CGFloat(250) ,height:CGFloat(350))
                    .clipped()
                    .rotationEffect(Angle.degrees(degree))
                    .gesture(RotationGesture().onChanged{angle in self.degree = self.newdegree + angle.degrees}.onEnded{angle in self.newdegree = self.degree})
                Text(game.gameName)
                    .font(Font.system(size: CGFloat(35)))
                Text(game.guide)
                    .contextMenu{
                        Button(action:{self.likeScale = 5}){
                            Text("實用")
                            Image(systemName:"suit.heart.fill").imageScale(.large)
                        }
                        Button(action:{self.likeScale = 1}){
                            Text("普通")
                            Image(systemName:"heart").imageScale(.small)
                        }
                }
                    .font(Font.system(size: CGFloat(17)))
            }
        }
    }
    }
}

struct GameInfor_Previews: PreviewProvider {
    static var previews: some View {
        GameInfor(game: images[0])
    }
}
