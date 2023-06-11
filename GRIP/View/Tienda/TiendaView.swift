//
//  TiendaView.swift
//  GRIP
//
//  Created by Álvaro García Pizarro on 3/2/23.
//

import SwiftUI
import WebKit

struct TiendaView: UIViewRepresentable {
    
    typealias UIViewType = WKWebView
    let urla = URL(string: "https://www.gripclothing.net")!
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        
        webView.load(URLRequest(url: urla))
        
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
}

struct TiendaView_Previews: PreviewProvider {
    static var previews: some View {
        TiendaView()
    }
}
