//
//  D6.swift
//  aula01-laurafcamargos
//
//  Created by Student07 on 03/03/23.
//

import SwiftUI

struct D6: View {
    var body: some View {
        TabView {
            
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "pencil.circle")
                Text("Editor")
                }
         
            ProfileView()
                .tabItem {
                    Label("Perfil", systemImage: "person.circle")
                    Text("Notes")
                }
         
            SettingsView()
                .tabItem {
                    Label("Config", systemImage: "gearshape")
                }
            GaleriaView()
                .tabItem {
                    Label("Fotos", systemImage: "photo.fill")
                }
            MusicView()
                .tabItem {
                    Label("Músicas", systemImage: "music.note")
                }
        }.background(.blue)
    }
}
struct D6_Previews: PreviewProvider {
    static var previews: some View {
        D6()
    }
}
