//
//  List.swift
//  hw2
//
//  Created by User02 on 2019/10/18.
//  Copyright © 2019 User02. All rights reserved.
//

import SwiftUI

struct CerList: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(characters) { (characterClass) in
                    NavigationLink(destination: CerDetail(characters: characterClass)) {
                        CerRow(character: characterClass)
                    }
                }
            }
            .navigationBarTitle("角色")
        }
    }
}

struct MonsterList_Previews: PreviewProvider {
    static var previews: some View {
        CerList()
    }
}
