//
//  musicView.swift
//  aula04
//
//  Created by Student07 on 06/03/23.
//

import SwiftUI

struct musicView: View {
    var songClicked : music
    var body: some View {
            VStack {
                AsyncImage(url: URL(string: songClicked.capa)){ image in
                    image.resizable()
                }placeholder: {
                    ProgressView()
                }.frame(width: 300,height: 300)
                Text(songClicked.nome).foregroundColor(.white).font(.system(size: 20))
                Text(songClicked.cantor).foregroundColor(.white).padding(.leading,-5).font(.system(size: 20))
                Spacer()
                HStack {
                    Image(systemName: "shuffle").font(.system(size: 30)).padding([.leading,.trailing],10)
                    Image(systemName: "backward.end.fill").font(.system(size: 30))
                    Image(systemName: "play.fill").font(.system(size: 40)).padding([.leading,.trailing],20)
                    Image(systemName: "forward.end.fill").font(.system(size: 30))
                    Image(systemName: "repeat").font(.system(size: 30)).padding([.leading,.trailing],10)
                }
                Spacer()
            }.frame(maxWidth:  .infinity).background(.linearGradient(colors: [.blue,.black],startPoint:.top, endPoint: .bottom)).foregroundColor(.white)
        
    }
}

struct musicView_Previews: PreviewProvider {
    static var previews: some View {
        var teste =  music(id: 2, nome: "No Idea", cantor: "Don Toliver", capa: "https://e-cdn-images.dzcdn.net/images/cover/0fcb98ccbcd69c87768385a5b6611b7c/264x264-000000-80-0-0.jpg")
        musicView(songClicked: teste)
    }
}
