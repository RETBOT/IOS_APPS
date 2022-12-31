//
//  MovieEditView.swift
//  Cheemstyle Store
//
//  Created by Usuario invitado on 14/12/22.
//

import SwiftUI
 
enum Mode {
  case new
  case edit
}
 
enum Action {
  case delete
  case done
  case cancel
}
 
struct MovieEditView: View {
    @Environment(\.presentationMode) private var presentationMode
    @State var presentActionSheet = false
     
    @ObservedObject var viewModel = MovieViewModel()
    var mode: Mode = .new
    var completionHandler: ((Result<Action, Error>) -> Void)?
     
     
    var cancelButton: some View {
      Button(action: { self.handleCancelTapped() }) {
        Text("Cancelar")
      }
    }
     
    var saveButton: some View {
      Button(action: { self.handleDoneTapped() }) {
        Text(mode == .new ? "Done" : "Guardar")
      }
      .disabled(!viewModel.modified)
    }
     
    var body: some View {
      NavigationView {
        Form {
          Section(header: Text("Pelicula")) {
            TextField("Titulo", text: $viewModel.movie.title)
            TextField("Año", text: $viewModel.movie.year)
          }
           
          Section(header: Text("Descripcion")) {
            TextField("Descripcion", text: $viewModel.movie.description)
          }
           
          if mode == .edit {
            Section {
              Button("Eliminar Pelicula") { self.presentActionSheet.toggle() }
                .foregroundColor(.red)
            }
          }
        }
        .navigationTitle(mode == .new ? "Nueva Pelicula" : viewModel.movie.title)
        .navigationBarTitleDisplayMode(mode == .new ? .inline : .large)
        .navigationBarItems(
          leading: cancelButton,
          trailing: saveButton
        )
        .actionSheet(isPresented: $presentActionSheet) {
          ActionSheet(title: Text("Estas seguro?"),
                      buttons: [
                        .destructive(Text("Eliminar Pelicula"),
                                     action: { self.handleDeleteTapped() }),
                        .cancel()
                      ])
        }
      }
    }
     
    // Action Handlers
     
    func handleCancelTapped() {
      self.dismiss()
    }
     
    func handleDoneTapped() {
      self.viewModel.handleDoneTapped()
      self.dismiss()
    }
     
    func handleDeleteTapped() {
      viewModel.handleDeleteTapped()
      self.dismiss()
      self.completionHandler?(.success(.delete))
    }
     
    func dismiss() {
      self.presentationMode.wrappedValue.dismiss()
    }
  }
 
//struct MovieEditView_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieEditView()
//    }
//}
 
struct MovieEditView_Previews: PreviewProvider {
  static var previews: some View {
    let movie = Movie(title: "Titulo ejemplo", description: "Ejemlo descripcion", year: "2020")
    let movieViewModel = MovieViewModel(movie: movie)
    return MovieEditView(viewModel: movieViewModel, mode: .edit)
  }
}

