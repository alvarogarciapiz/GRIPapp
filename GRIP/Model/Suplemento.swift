//
//  Suplemento.swift
//  GRIP
//
//  Created by Álvaro García Pizarro on 3/2/23.
//

import Foundation
import SwiftUI

struct Suplemento: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var dosis: String
    var horaNotificacion: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
