//
//  ProfileView.swift
//  GRIP
//
//  Created by Álvaro García Pizarro on 2/2/23.
//

import SwiftUI
import UserNotifications

struct ProfileView: View {
    @State var nombre: String = ""
    @State var isPrivate: Bool = true
    @State var notificationsEnabled: Bool = true
    @State private var previewIndex = 0
    var previewOptions = ["Siempre", "Al estar desbloqueado", "Nunca"]
                              
    var body: some View {
        NavigationView {
            Form {
                HStack{
                    Text("Álvaro García").font(.title).bold()
                    Spacer()
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                           .frame(width: 60, height: 60).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .overlay {
                            Circle().stroke(.white, lineWidth: 2)
                        }
                        .shadow(radius: 4)
                }
                Section(header: Text("PERFIL")) {
                    TextField("Cambiar nombre", text: $nombre)
                    Toggle(isOn: $isPrivate) {
                        Text("Cuenta pública")
                    }
                }
                
                Section(header: Text("NOTIFICACIONES")) {
                    Toggle(isOn: $notificationsEnabled) {
                        Text("Mostrar notificaciones")
                    }
                    Picker(selection: $previewIndex, label: Text("Show Previews")) {
                        ForEach(0 ..< previewOptions.count) {
                            Text(self.previewOptions[$0])
                        }
                    }
                }
                
                Section(header: Text("ABOUT")) {
                    HStack {
                        Text("Versión")
                        Spacer()
                        Text("0.1")
                    }
                }
                
                Section {
                    Button(action: {
                        print("Perform an action here...")
                    }) {
                        Text("Borrar todos los datos").foregroundColor(.red)
                    }
                }
            }
            .navigationBarTitle("Ajustes")
        }
    }

        
        
        
    }

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
