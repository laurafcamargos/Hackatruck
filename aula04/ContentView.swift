//
//  ContentView.swift
//  aula04
//
//  Created by Student07 on 06/03/23.
//

import SwiftUI

struct ContentView: View {
    @State var array = [
        music(id: 1, nome: "Sinônimos", cantor: "Chitãozinho e Xororó", capa: "https://imagens.ne10.uol.com.br/veiculos/_midias/jpg/2022/05/31/806x444/1_chitaozinho_e_xororo_50_anos-21132095.jpg"),
        music(id: 2, nome: "No Idea", cantor: "Don Toliver", capa: "https://e-cdn-images.dzcdn.net/images/cover/0fcb98ccbcd69c87768385a5b6611b7c/264x264-000000-80-0-0.jpg"),
        music(id: 3, nome: "November Rain", cantor: "Guns N' Roses", capa: "https://whiplash.net/imagens_promo_22/gunsnroses_capa_use_duplo.jpg"),
        music(id: 4, nome: "Item 4", cantor: "cantor", capa: "who"),
        music(id: 5, nome: "Item 5", cantor: "cantor", capa: "who"),
        music(id: 6, nome: "Item 6", cantor: "cantor", capa: "who"),
        music(id: 5, nome: "Item 5", cantor: "cantor", capa: "who")]
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Image("bg")
                        .resizable()
                        .frame(width: 230, height: 230)
                        .padding(.all,20)
                    Text("HackaFM").font(.system(size: 30)).font(.largeTitle).foregroundColor(.white).frame(maxWidth: .infinity,alignment: .leading).bold().padding(.horizontal,20)
                }.padding([.leading,.trailing], 0)
                    .padding(.top,60)
                    .background(.linearGradient(colors:[.blue,.black], startPoint: .top, endPoint: .bottom))
                HStack {
                    Image("bg")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Text("HackaSong").foregroundColor(.white).bold()
                }.frame(maxWidth: .infinity,alignment: .leading).padding(.leading,20)
                
                ForEach(array) { i in
                    Spacer()
                    HStack{
                        NavigationLink(destination: musicView(songClicked: i)){
                            HStack{
                                AsyncImage(url: URL(string: i.capa)){ image in
                                    image.resizable()
                                }placeholder: {
                                    ProgressView()
                                }.frame(width: 50,height: 50)
                                
                                VStack(alignment: .leading){
                                    Text(i.nome)
                                        .font(.system(size: 17))
                                        .bold()
                                    
                                    Text(i.cantor)
                                        .font(.system(size: 13))
                                }
                                Spacer()
                                Button{}label: {
                                    Text("...")
                                        .font(.system(size: 30))
                                        .bold()
                                }
                            }
                        }
                    }.padding(.leading,20)
                }
                Text("Sugeridos").font(.system(size: 30)).font(.largeTitle).foregroundColor(.white).frame(maxWidth: .infinity,alignment: .leading).bold().padding(.horizontal,20)
                Spacer()
                ScrollView(.horizontal){
                    HStack(spacing:20){
                        ForEach(array) { i in
                            NavigationLink(destination: musicView(songClicked: i)){
                                VStack{
                                    AsyncImage(url: URL(string: i.capa)){ image in
                                        image.resizable()
                                    }placeholder: {
                                        ProgressView()
                                    }.frame(width: 170,height: 170)
                                    Text(i.nome)
                                        .font(.system(size: 17))
                                        .bold()
                                }
                            }
                        }
                    }
                }.frame(minHeight: 0,maxHeight: .greatestFiniteMagnitude)
            .padding(.leading,20)
            }.background(.black).foregroundColor(.white).ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
