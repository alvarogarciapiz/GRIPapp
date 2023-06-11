//
//  PesoDetailView.swift
//  GRIP
//
//  Created by Álvaro García Pizarro on 5/2/23.
//

import SwiftUI
import SwiftUICharts

struct PesoDetailView: View {
    var fecha = obtenerFecha()
    @State private var showSheet: Bool = false
    
    var body: some View {
        ScrollView{
            VStack {
                VStack{
                    BarChartView(data: ChartData(values: [("2/1/2023",82), ("12/1/2023",87), ("20/1/2023",88), ("24/1/2023",86), ("2/2/2023",90)]), title: "Evolución peso", legend: "Kg", style: Styles.barChartStyleNeonBlueLight, form: ChartForm.extraLarge, cornerImage:Image(systemName: "scalemass.fill")).padding(.top, 50)
                }
                
                VStack(alignment: .leading){
                    Button {
                        showSheet.toggle()
                    } label:{
                        Text("Añadir peso").font(.system(size: 22)).frame(maxWidth: .infinity, minHeight: 40)
                    }.buttonStyle(.borderedProminent).padding(.top, 30.0)
                        .sheet(isPresented: $showSheet){
                            FormView()
                                .presentationDetents([.medium])
                        }
                }
                Spacer()
                
                HStack{
                    LineView(data: [78,77,77,76,78,79,79,80,81,82,80,83,84,85,83,83,82,83,83,84,84,84,85,84,84,85], title: "Evolución global", legend: "Kg").padding(10)
                }
                Spacer()
                
            }.padding([.leading, .trailing], 30.0)
        }
    }
}

struct PesoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PesoDetailView()
    }
}

func obtenerFecha() -> String {
    let components = Calendar.current.dateComponents([.year, .month, .day], from: Date())
    let dia = components.day ?? 1
    let mes = components.month ?? 2
    let anio = components.year ?? 2023
    return ("\(dia)/\(mes)/\(anio)")
}
