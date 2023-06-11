//
//  FormView.swift
//  GRIP
//
//  Created by Álvaro García Pizarro on 6/2/23.
//

import SwiftUI

struct FormView: View {
    @Environment(\.dismiss) var dismiss
    @State private var peso: Double = 0.0
    @State private var fechaHora: Date = Date()
    @State private var ayunas: Bool = true
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Añade un nuevo peso")) {
                    TextField("Peso", value: $peso, format: .number).keyboardType(.decimalPad)
                    DatePicker("Fecha y hora", selection: $fechaHora)
                    Toggle("En ayunas", isOn: $ayunas)
                    Button {
                        dismiss()
                    } label:{
                        Text("Añadir peso").font(.system(size: 20)).frame(maxWidth: .infinity, minHeight: 30)
                    }.buttonStyle(.borderedProminent).padding(.top, 5)
                    //.disabled(!ayunas) -> Sólo dejaría añadir si en ayunas es true
                }
                
            }
            .navigationBarTitle("Añade un nuevo peso", displayMode: .automatic)

        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
