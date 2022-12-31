//
//  MoviesViewModel.swift
//  appPeliculasSwift
//
//  Created by Usuario invitado on 15/12/22.
//

import Foundation
import Combine
import FirebaseFirestore

class MoviesViewModel: ObservableObject {
    @Published var movies = [Movie]()
      
     private var db = Firestore.firestore()
     private var listenerRegistration: ListenerRegistration?
      
     deinit {
       unsubscribe()
     }
    
    func unsubscribe() {
        if listenerRegistration != nil {
          listenerRegistration?.remove()
          listenerRegistration = nil
        }
      }
      // listar las peliculas
      func subscribe() {
        if listenerRegistration == nil {
          listenerRegistration = db.collection("movielist").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
              print("No documents")
              return
            }
             
            self.movies = documents.compactMap { queryDocumentSnapshot in
              try? queryDocumentSnapshot.data(as: Movie.self)
            }
          }
        }
      }
       // eliminar peliculass
      func removeMovies(atOffsets indexSet: IndexSet) {
        let movies = indexSet.lazy.map { self.movies[$0] }
        movies.forEach { movie in
          if let documentId = movie.id {
            db.collection("movielist").document(documentId).delete { error in
              if let error = error {
                print("Unable to remove document: \(error.localizedDescription)")
              }
            }
          }
        }
      }
}

