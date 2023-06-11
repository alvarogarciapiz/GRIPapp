//
//  DatosEjemplo.swift
//  GRIP
//
//  Created by Álvaro García Pizarro on 6/2/23.
//

import SwiftUI

struct DatosEjemplo: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var usuarios: FetchedResults<User>
    @FetchRequest(sortDescriptors: []) var suplementos: FetchedResults<Suplementos>
    var body: some View {
        VStack {
            List(usuarios){ usuario in
                Text(usuario.name ?? "Unknown")
            }
            
            Button("Add") {
                let nombre = "Avaro"
                //Así se crea un user
                let user = User(context: moc)
                user.id = UUID()
                user.name = nombre
                
                //Así se 'guarda' en memoria
                try? moc.save()
            }
        }
    }
}

struct DatosEjemplo_Previews: PreviewProvider {
    static var previews: some View {
        DatosEjemplo()
    }
}
