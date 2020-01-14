//
//  Overview.swift
//  hw2
//
//  Created by User02 on 2019/10/18.
//  Copyright © 2019 User02. All rights reserved.
//

import SwiftUI

struct Overview: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color.white
                ScrollView(.horizontal){
                    HStack(spacing: 20) {
                        ForEach(images) { (imageView) in
                            NavigationLink(destination: GameInfor(game: imageView)) {
                                Image(imageView.name)
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFill()
                                .frame(minWidth: 0, maxWidth: 380, maxHeight: 450)
                                .clipped()
                            }
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle("遊戲封面")
        }
    }
}

struct MonsterOverview_Previews: PreviewProvider {
    static var previews: some View {
        Overview()
    }
}
