//
//  Detail.swift
//  hw2
//
//  Created by User02 on 2019/10/18.
//  Copyright © 2019 User02. All rights reserved.
//

import SwiftUI

struct CerDetail: View {
    var characters: Cer
    var body: some View {
        List(0..<characters.character.count){(index) in
            VStack(){
                Group{
                    Image(self.characters.character[index].name)
                        .resizable()
                        .frame(minWidth: 0, maxWidth: 190, maxHeight: 500)
                        .background(Color.white)
                        .cornerRadius(0)
                        .clipped()
                        .padding()
                    Text(self.characters.character[index].data)
                        .font(Font.system(size: 20))
                    Spacer()
                }
            }
            .background(Color.gray)
            .cornerRadius(40)
            .shadow(radius: 20)
        }
    }
}

struct MonsterDetail_Previews: PreviewProvider {
    static var previews: some View {
        CerDetail(characters: characters[0])
    }
}
