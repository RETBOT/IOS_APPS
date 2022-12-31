//
//  Movie.swift
//  appPeliculasSwift
//
//  Created by Usuario invitado on 15/12/22.
//

import Foundation
import FirebaseFirestoreSwift
 
struct Movie: Identifiable, Codable { // datos de la pelicula 
  @DocumentID var id: String?
  var title: String
  var description: String
  var year: String
   
  enum CodingKeys: String, CodingKey { // llaves de la pelicula
    case id
    case title
    case description
    case year
  }
}

