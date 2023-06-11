//
//  SuplementoDetailView.swift
//  GRIP
//
//  Created by Álvaro García Pizarro on 6/2/23.
//

import SwiftUI

struct SuplementoDetailView: View {
    let suplemento: Suplementos
    var body: some View {
        ScrollView{
            ZStack(alignment: .bottomTrailing){
                Image("creatine")
                    .resizable()
                    .scaledToFit()
                
                Text(suplemento.nombre?.uppercased() ?? "Nombre")
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(8)
                    .foregroundColor(.white)
                    .background(.black.opacity(0.75))
                    .clipShape(Capsule())
                    .offset(x: -5, y: -5)
            }
            Text(suplemento.nombre ?? "Desconocido")
                .font(.title)
                .foregroundColor(.secondary)
            Text(suplemento.descripcion ?? "Desconocido")
        }
        .navigationTitle(suplemento.nombre ?? "Suplemento desconocido")
        .navigationBarTitleDisplayMode(.inline)
    }
}
