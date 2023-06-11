//
//  PesoEvolutionView.swift
//  GRIP
//
//  Created by Álvaro García Pizarro on 5/2/23.
//

import SwiftUI
import SwiftUICharts

struct PesoEvolutionView: View {
    var body: some View {
        VStack{
            MultiLineChartView(data: [([8,32,11,23,40,88], GradientColors.green), ([34,56,72,38,43,100,90], GradientColors.orngPink)], title: "Peso objetivo VS actual", form: ChartForm.large)
        }
    }
}

struct PesoEvolutionView_Previews: PreviewProvider {
    static var previews: some View {
        PesoEvolutionView()
    }
}
