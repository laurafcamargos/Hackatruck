//
//  ContentView.swift
//  aula01-laurafcamargos
//
//  Created by Student07 on 01/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Image("wallpaper").resizable()
                .aspectRatio(contentMode: .fit)
            VStack {
                Text("HackaTruck").foregroundColor(.blue).bold().font(.system(size: 27))
                HStack {
                    Text("Maker").foregroundColor(.yellow).bold()
                    Text("Space").foregroundColor(.red).bold()
                }
            } .padding()
        } .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
