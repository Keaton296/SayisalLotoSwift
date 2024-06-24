//
//  ContentView.swift
//  SayisalLoto
//
//  Created by Trakya11 on 24.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .center,spacing: 130) {
                Text("Sayısal Loto")
                    .fontWeight(.bold).font(.system(size:50))
                NavigationLink(destination: NasilOynanirView()){
                    
                    Text("Nasıl Oynanır?")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    
                }
                
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
