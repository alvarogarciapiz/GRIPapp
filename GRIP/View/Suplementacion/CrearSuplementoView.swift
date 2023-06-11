//
//  CrearSuplementoView.swift
//  GRIP
//
//  Created by Álvaro García Pizarro on 4/2/23.
//

import SwiftUI

struct CrearSuplementoView: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    
    @State private var nombre = ""
    @State private var descripcion = ""
    @State private var hora = ""
    @State private var minuto = ""
    @State private var notificacion = false
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("información del suplemento")){
                    TextField("Nombre", text: $nombre)
                    TextField("Información del suplemento", text: $descripcion)

                }
                Section(header: Text("notificaciones")){
                    Toggle(isOn: $notificacion) {
                        Text("Mostrar notificaciones")
                    }
                    TextField("Hora", text: $hora).disabled(!notificacion)
                    TextField("Minuto", text: $minuto).disabled(!notificacion)
                }
                Section{
                    Button{
                        let nuevoSuplemento = Suplementos(context: moc)
                        nuevoSuplemento.id = UUID()
                        nuevoSuplemento.nombre = nombre
                        nuevoSuplemento.descripcion = descripcion
                        nuevoSuplemento.notificacion = notificacion
                        nuevoSuplemento.hora = hora
                        nuevoSuplemento.minuto = minuto
                        
                        try? moc.save()
                        dismiss()
                        
                    } label:{
                        Text("Añadir suplemento").font(.system(size: 18)).frame(maxWidth: .infinity, minHeight: 25)
                    }.buttonStyle(.borderedProminent)
                }
            }.navigationTitle("Añadir Suplemento")
        }
    }
}

struct CrearSuplementoView_Previews: PreviewProvider {
    static var previews: some View {
        CrearSuplementoView()
    }
}
