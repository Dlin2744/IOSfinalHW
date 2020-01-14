//
//  Row.swift
//  hw2
//
//  Created by User02 on 2019/10/18.
//  Copyright © 2019 User02. All rights reserved.
//

import SwiftUI

struct CerRow: View {
    var character: Cer
    var body: some View {
        HStack{
            Image(character.name)
            .resizable()
            .frame(width: 50, height: 130)
                .clipShape(Rectangle())
                .overlay(Rectangle().stroke(Color(red: 131/255, green: 139/255, blue: 131/255), lineWidth: 3))
                .shadow(radius: 20)
            Text(character.name)
        }
    }
}

struct MonsterRow_Previews: PreviewProvider {
    static var previews: some View {
        CerRow(character : characters[0])
    }
}
