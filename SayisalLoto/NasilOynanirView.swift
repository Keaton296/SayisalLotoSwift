//
//  NasilOynanirView.swift
//  SayisalLoto
//
//  Created by Trakya11 on 24.06.2024.
//

import SwiftUI

struct NasilOynanirView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 50.0){
            Text("Nasıl Oynanır?")
                .fontWeight(.medium).font(.system(size:30))
            Text("   Oyuncudan oyun başında önüne gelen kolondaki 49 sayıdan 6 tane tahmin yapması istenir, Oyna denildiğinde loto sonuçları çıkar, oyuncu bildiği sayı kadar ödülden pay kazanır.")
                .fontWeight(.light).font(.system(size:25)).padding(.horizontal, 10.0)
            Spacer()
        }
    }
}

struct NasilOynanirView_Previews: PreviewProvider {
    static var previews: some View {
        NasilOynanirView()
    }
}
