//
//  KazancEkranView.swift
//  SayisalLoto
//
//  Created by Trakya11 on 24.06.2024.
//

import SwiftUI

struct KazancEkranView: View {
    @Binding var suankiEkran: EkranDurumu
    @Binding var cekilenSayilar: [Int]
    @Binding var dogruTahminSayisi: Int
    @Binding var kazanc : Int
    func arrayToString(_ array: [Int]) -> String {
        return array.map{String($0)}.joined(separator: ", ")
    }
    var body: some View {
        VStack{
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .fontWeight(.bold).font(.system(size:50))
            Text("Loto Sonuçları:")
                .font(.system(size:45))
            Text(arrayToString(cekilenSayilar))
                .font(.system(size:45))
            Text("\(dogruTahminSayisi) tane sayıyı doğru tahmin ettiniz.")
                .font(.system(size:30))
                .multilineTextAlignment(.center)
                .padding(.top)
            Text("Kazancınız:")
                .font(.system(size:50))
                .padding(.top)
            Text("\(kazanc)$")
                .font(.system(size:40))
            Button(action: {suankiEkran = .AnaEkran}) {
                Image(systemName:"rectangle.portrait.and.arrow.right")
                Text("Ana Menü")
            }
            .padding(.top)
            
        }

    }
}

struct KazancEkranView_Previews: PreviewProvider {
    static var previews: some View {
        KazancEkranView(suankiEkran: .constant(.KazancEkran),cekilenSayilar: .constant([1,2,3]),dogruTahminSayisi: .constant(3),kazanc: .constant(10))
    }
}
