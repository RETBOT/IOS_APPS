//
//  MovieDetailsView.swift
///  appPeliculasSwift
//
//  Created by Usuario invitado on 15/12/22.
//

import SwiftUI
 
struct MovieDetailsView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var presentEditMovieSheet = false // bandera para el boton editar
     
    var movie: Movie
     
    private func editButton(action: @escaping () -> Void) -> some View { // Boton editar 
      Button(action: { action() }) {
        Text("Editar")
      }
    }
     
    var body: some View {
      Form {
        Section(header: Text("Pelicula")) { // vista para la pelicula seleccionada
          Text(movie.title) // Titulo y descripcion
          Text(movie.description)
             
        }
         
        Section(header: Text("Año")) { // año de la pelicula 
            Text(movie.year)
        }
      }
      .navigationBarTitle(movie.title)
      .navigationBarItems(trailing: editButton { // boton editar 
        self.presentEditMovieSheet.toggle() // cambia la bandera del boton
      })
      .onAppear() {
        print("MovieDetailsView.onAppear() for \(self.movie.title)")
      }
      .onDisappear() {
        print("MovieDetailsView.onDisappear()")
      }
      .sheet(isPresented: self.$presentEditMovieSheet) {
        MovieEditView(viewModel: MovieViewModel(movie: movie), mode: .edit) { result in
          if case .success(let action) = result, action == .delete {
            self.presentationMode.wrappedValue.dismiss()
          }
        }
      }
    }
     
  }
 
struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let movie = Movie(title: "titulo pelicula", description: "este es un ejemplo de descripcion", year: "2021")
        return
          NavigationView {
            MovieDetailsView(movie: movie)
          }
    }
}
