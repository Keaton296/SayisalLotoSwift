//
//  AnaEkranView.swift
//  SayisalLoto
//
//  Created by Trakya11 on 24.06.2024.
//

import SwiftUI

struct AnaEkranView: View {
    @Binding var suankiEkran: EkranDurumu
    var body: some View {
        NavigationView{
            VStack(alignment: .center,spacing: 50) {
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .fontWeight(.bold).font(.system(size:50))
                Button(action: {suankiEkran = .SecimEkran}) {
                    Text("Oyna")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
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

struct AnaEkranView_Previews: PreviewProvider {
    static var previews: some View {
        AnaEkranView(suankiEkran: .constant(.AnaEkran))
    }
}
