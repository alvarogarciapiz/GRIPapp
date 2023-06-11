//
//  SuplementacionView.swift
//  GRIP
//
//  Created by Álvaro García Pizarro on 3/2/23.
//

import SwiftUI

struct SuplementacionView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var suplementos : FetchedResults<Suplementos>
    @State private var showingAddScreen = false
    
    var body: some View {
            NavigationView {
                List{
                    ForEach(suplementos) { suplemento in
                        NavigationLink{
                            SuplementoDetailView(suplemento: suplemento)
                        } label: {
                            HStack{
                                VStack{
                                    Image(systemName: "pill.fill").font(.largeTitle)
                                }
                                VStack{
                                    Text(suplemento.nombre ?? "Desconocido").font(.headline).bold()
                                    Text(suplemento.descripcion ?? "Desconocido")
                                }
                            }
                        }
                    }
                }
                .navigationTitle("Suplementos")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            showingAddScreen.toggle()
                        } label: {
                            Label("Añadir Suplemento", systemImage: "plus")
                        }
                    }
                }
                .sheet(isPresented: $showingAddScreen){
                    CrearSuplementoView()
                }
            }
    }
}

struct SuplementacionView_Previews: PreviewProvider {
    static var previews: some View {
        SuplementacionView()
    }
}
