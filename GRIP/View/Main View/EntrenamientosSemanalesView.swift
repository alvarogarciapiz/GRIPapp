//
//  EntrenamientosSemanalesView.swift
//  GRIP
//
//  Created by Álvaro García Pizarro on 5/2/23.
//

import SwiftUI
import SwiftUICharts

struct EntrenamientosSemanalesView: View {
    var body: some View {
        VStack{
            BarChartView(data: ChartData(values: [("Enero 2023",4), ("Enero 2023",4), ("Enero 2023",3), ("Enero 2023",5), ("Febrero 2023",6)]), title: "Entrenamientos semanales", legend: "Número de entrenos a la semana", form: ChartForm.extraLarge, cornerImage:Image(systemName: "figure.rolling")) // legend is optional
            
            
        }
    }
}

struct EntrenamientosSemanalesView_Previews: PreviewProvider {
    static var previews: some View {
        EntrenamientosSemanalesView()
    }
}
