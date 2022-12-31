//
//  ContentView.swift
//  appPeliculasSwift
//
//  Created by Usuario invitado on 15/12/22.
//
import SwiftUI
 
struct ContentView: View {
    
    // Obtenemos los modelos de las bases de datos
    @StateObject var viewModel = MoviesViewModel() //MovieViewModel.swift
    // ponemos una bandera en falso la seleccion de la pelicula
    @State var presentAddMovieSheet = false
     
    // Creamos un boton, para agregar peliculas
    private var addButton: some View {
      Button(action: { // y cuando se seleccione quitamos la bandera
          self.presentAddMovieSheet.toggle() }) {
        Image(systemName: "plus")
      }
    }
    
    // creamos una pila, para agregar una pelicula
    private func movieRowView(movie: Movie) -> some View {
       NavigationLink(destination: MovieDetailsView(movie: movie)) { // obtenemos las peliculas
         VStack(alignment: .leading) {
           Text(movie.title) // titulo de la peliculas
             .font(.headline)
            Text(movie.year) // año de la pelicula
             .font(.subheadline)
         }
       }
    }
     
    var body: some View {
      NavigationView {
        List {
            // ver las peliculas
          ForEach (viewModel.movies) { movie in
            movieRowView(movie: movie)
          } // boton para eliminar
          .onDelete() { indexSet in
            // se elimina la pelicula con el index
            viewModel.removeMovies(atOffsets: indexSet)
          }
        }.blendMode(/*@START_MENU_TOKEN@*/.darken/*@END_MENU_TOKEN@*/)
        .navigationBarTitle("Peliculas") // titulo de la navegacion
        .navigationBarItems(trailing: addButton) // boton para agregar
        .onAppear() {
          print("Hola.")
          self.viewModel.subscribe()
        }
        .sheet(isPresented: self.$presentAddMovieSheet) {
          MovieEditView() //MovieEditView.swift
        }
         // color de texto
      }.foregroundColor(Color.black)
            .background(Color.blue)
        // End Navigation
    }
    // End Body
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
