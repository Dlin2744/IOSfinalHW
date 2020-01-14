//
//  Appview.swift
//  hw2
//
//  Created by User02 on 2019/10/18.
//  Copyright © 2019 User02. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            CerList()
            .tabItem {
                Image(systemName: "list.bullet")
                Text("角色")
            }
            Overview()
            .tabItem {
                Image(systemName: "book.circle")
                Text("封面")
            }
            
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
