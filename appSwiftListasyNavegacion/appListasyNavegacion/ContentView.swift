//
//  ContentView.swift
//  appListasyNavegacion
//
//  Created by Guest User on 09/12/22.
//

import SwiftUI

struct EmojiFrutas : Identifiable
{
    let id = UUID()
    let emoji : String
    let nombre : String
    let descripcion: String
}

private let emojiList: [EmojiFrutas]  = [
    EmojiFrutas(emoji: "🍊", nombre: "Naranja", descripcion: "La naranja es una fruta cítrica obtenida del naranjo dulce (Citrus × sinensis), del naranjo amargo (Citrus × aurantium) y de naranjos de otras variedades o híbridos, de origen asiático.1​ Es un hesperidio carnoso de cáscara más o menos gruesa y endurecida, y su pulpa está formada típicamente por once gajos u hollejos llenos de jugo, el cual contiene mucha vitamina C, flavonoides y aceites esenciales. Se cultiva como un antiguo árbol ornamental y para obtener fragancias de sus frutos. Es más pequeña y dulce que el pomelo o toronja y más grande, aunque menos perfumada que la mandarina. Existen numerosas variedades de naranjas, siendo la mayoría híbridos producidos a partir de las especies Citrus maxima (pamplemusa), Citrus reticulata (mandarina) y Citrus medica (cidro)."),

    EmojiFrutas(emoji: "🍋", nombre: "Limon", descripcion: "Limón es un nombre común de tres frutas cítricas fragantes y de sabor ácido, utilizadas principalmente en el sector alimentario. En primer lugar, se conoce como limones a aquellos frutos producidos por el híbrido Citrus × aurantifolia, árbol llamado popularmente limonero.1​ Por otra parte, en el Cono Sur y España se le da el nombre de limon al fruto de C. limon.2​ Finalmente, hay áreas en que el término designa el fruto de C. latifolia."),
    
    EmojiFrutas(emoji: "🫐", nombre: "Blueberries", descripcion: "are a widely distributed and widespread group of perennial flowering plants with blue or purple berries. They are classified in the section Cyanococcus within the genus Vaccinium. Vaccinium also includes cranberries, bilberries, huckleberries and Madeira blueberries.[1] Commercial blueberries—both wild (lowbush) and cultivated (highbush)—are all native to North America. The highbush varieties were introduced into Europe during the 1930s.[2]"),
    EmojiFrutas(emoji: "🍎", nombre: "Manzana", descripcion: "La manzana o poma​ es el fruto comestible de la especie Malus domestica, el manzano común. Es una fruta pomácea de forma redonda y sabor muy dulce, dependiendo de la variedad. Los manzanos se cultivan en todo el mundo y son las especies más utilizadas del género Malus"),
    EmojiFrutas(emoji: "🍌", nombre: "Banana", descripcion: "La banana, ​ conocido también como banano, plátano, ​ guineo maduro, guineo, cambur o gualele, es un fruto comestible, de varios tipos de grandes plantas herbáceas del género Musa. A estas plantas de gran porte que tienen aspecto de arbolillo se las denomina plataneras, bananeros, bananeras, plátanos o bananos.​"),
    
    EmojiFrutas(emoji: "🍒", nombre: "Cherry", descripcion: "Cereza y guinda son los nombres del fruto de varios árboles del género Prunus, aunque comercialmente se aproveche un número limitado de especies. Al árbol se le conoce como cerezo o guindo."),
    
    EmojiFrutas(emoji: "🍍", nombre: "Pina", descripcion: "Ananas comosus es una especie de la familia de las bromeliáceas, nativa de América del Sur. Planta de escaso porte y con hojas duras y lanceoladas de hasta 1 m de largo, fructifica una vez al año produciendo un único fruto fragante y dulce, muy apreciado en gastronomía."),
]

//struct ContentView: View {
//
//    var body: some View {
//        NavigationView {
//            List(emojiList)
//            {
//                EmojiFrutas in
//                HStack{
//                    ZStack{
//                        Text(EmojiFrutas.emoji)
//                            .shadow(radius: 0.3)
//                            .font(.largeTitle)
//                            .frame(width: 65, height: 65)
//                            .overlay(Circle().stroke(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1))))
//                    }
//                    Text(EmojiFrutas.nombre)
//                }.padding(10)
//
//            }
//        }
//    }
//}

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(emojiList)
            {
            EmojiFrutas in
                NavigationLink(destination: detallesVista(emojiFruta: EmojiFrutas))
                {
                    HStack {
                        emojiCirculoVista(emojiFruta:  EmojiFrutas)
                        Text(EmojiFrutas.nombre).font(.headline)
                    }.padding(5)
                }
            }.navigationBarTitle("Frutas")
        }
    }
}
struct emojiCirculoVista: View {
    let emojiFruta : EmojiFrutas
    var body: some View {
        ZStack {
            Text(emojiFruta.emoji)
                .shadow(radius: 5)
                .font(.largeTitle)
                .frame(width: 65, height: 65)
                .overlay(Circle().stroke(Color(#colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 1)),lineWidth:3))
        }
    }
}

struct detallesVista: View {
    let emojiFruta: EmojiFrutas
    var body: some View {
        VStack (alignment: .leading) {
            HStack () {
                emojiCirculoVista(emojiFruta: emojiFruta).padding(.trailing,5)
                Text(emojiFruta.nombre)
                    .font(.largeTitle)
                    .bold()
                Spacer()
            }
            Text(emojiFruta.descripcion).padding(.top)
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text(emojiFruta.nombre), displayMode: .inline)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    
    }
}
