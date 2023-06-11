//
//  MusicView.swift
//  GRIP
//
//  Created by Álvaro García Pizarro on 5/2/23.
//

import SwiftUI

struct MusicView: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.accentColor)
                .frame(height: 80)
                .overlay(HStack{
                    Spacer()
                    Image(systemName: "beats.headphones").font(.system(size: 35)).foregroundColor(.white)
                    Spacer()
                    Text("GRIP Training Session LIVE now").bold().foregroundColor(.white)
                    Spacer()
                })
        }
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
    }
}
