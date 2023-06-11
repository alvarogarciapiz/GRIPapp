//
//  MainView.swift
//  GRIP
//
//  Created by Álvaro García Pizarro on 2/2/23.
//

import SwiftUI

struct MainView: View {
    @State private var showSheetTraining: Bool = false
    var body: some View {
        
        NavigationView {
            VStack {
                //Zona alta: Buenas tardes
                HStack(alignment: .center){
                        Text(saludo())
                            .font(.system(size: 30))
                            .fontWeight(.medium)
                            .foregroundColor(Color("AccentColor"))
                    Spacer()
                }
                .padding([.top, .leading, .trailing], 30.0)
                Spacer()
                
                
                //Zona media: Botones y widgets
                VStack{
                    
                Spacer()
                NavigationLink(destination: PesoDetailView()) {
                    PesoEvolutionView()
                }
                    
                Spacer()
                Link(destination: URL(string: "https://music.apple.com/es/playlist/grip-training-session/pl.u-b3b8VPDh5E935B")!){
                    MusicView()
                }.padding([.leading, .bottom, .trailing])
                    
                Spacer()
                NavigationLink(destination: PesoDetailView()) {
                    EntrenamientosSemanalesView()
                }
                    
                Spacer()
                }.padding(10)
                Spacer()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

func getCurrentHour() -> Int {
    let components = Calendar.current.dateComponents([.hour], from: Date())
    let currentHour = components.hour ?? 0
    return Int(currentHour)
}

func saludo() -> String {
    var saludo = ""
    let hora = getCurrentHour()
    
    if hora>=12 && hora<=21 {
        saludo = "Buenas tardes, Álvaro"
    } else if hora>=21 || hora<=6 {
        saludo = "Buenas noches, Álvaro"
    } else {
        saludo = "Buenos días, Álvaro"
    }
    return saludo
}
