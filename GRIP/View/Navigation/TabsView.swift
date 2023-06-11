//
//  TabsView.swift
//  GRIP
//
//  Created by Álvaro García Pizarro on 5/2/23.
//

import SwiftUI

struct TabsView: View {
    @State private var selectedTab: Tab = .house
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            VStack{
                TabView(selection: $selectedTab) {
                    if selectedTab == .cart {
                        TiendaView()
                            .padding(.bottom, 60.0)
                    } else if selectedTab == .scalemass {
                        PesoDetailView().padding(.bottom, 60.0)
                    } else if selectedTab == .person {
                        ProfileView()
                    } else if selectedTab == .pill {
                        SuplementacionView()
                    } else if selectedTab == .house {
                        MainView().padding(.bottom, 60.0)
                    }
                }
            }
            VStack {
                Spacer()
                TabBarView(selectedTab: $selectedTab)
            }
        }
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
