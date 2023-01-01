//
//  ContentView.swift
//  appPeliculasSwift
//
//  Created by Usuario invitado on 15/12/22.
//
import SwiftUI
 //  By: RETBOT
struct ContentView: View {
     
    @StateObject var viewModel = MoviesViewModel() //MovieViewModel.swift
    @State var presentAddMovieSheet = false
     
     
    private var addButton: some View {
      Button(action: { self.presentAddMovieSheet.toggle() }) {
        Image(systemName: "plus")
      }
    }
     
    private func movieRowView(movie: Movie) -> some View {
       NavigationLink(destination: MovieDetailsView(movie: movie)) { //MovieDetailsView.swift
         VStack(alignment: .leading) {
           Text(movie.title)
             .font(.headline)
           //Text(movie.description)
           //  .font(.subheadline)
            Text(movie.year)
             .font(.subheadline)
         }
       }
    }
     
    var body: some View {
      NavigationView {
        List {
          ForEach (viewModel.movies) { movie in
            movieRowView(movie: movie)
          }
          .onDelete() { indexSet in
            //viewModel.removeMovies(atOffsets: indexSet)
            viewModel.removeMovies(atOffsets: indexSet)
          }
        }.blendMode(/*@START_MENU_TOKEN@*/.darken/*@END_MENU_TOKEN@*/)
        .navigationBarTitle("Peliculas")
        .navigationBarItems(trailing: addButton)
        .onAppear() {
          print("Hola.")
          self.viewModel.subscribe()
        }
        .sheet(isPresented: self.$presentAddMovieSheet) {
          MovieEditView() //MovieEditView.swift
        }
         
      }.foregroundColor(Color.black)
            .background(Color.blue)
        // End Navigation
    }
    // End Body
}
 //  By: RETBOT
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//  By: RETBOT
