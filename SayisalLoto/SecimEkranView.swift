//
//  SecimEkranView.swift
//  SayisalLoto
//
//  Created by Trakya11 on 24.06.2024.
//

import SwiftUI

struct SecimEkranView: View {
    @Binding var suankiEkran: EkranDurumu
    @Binding var secilenSayilar : [Int]
    @Binding var cekilenSayilar: [Int]
    @Binding var dogruTahminSayisi: Int
    @Binding var kazanc: Int
    let sutunlar = [
        GridItem(.flexible(),spacing:0),
        GridItem(.flexible(),spacing:0),
        GridItem(.flexible(),spacing:0),
        GridItem(.flexible(),spacing:0)
    ]
    public func SecimYap(for sayi: Int){
        if secilenSayilar.contains(sayi) {
            secilenSayilar.removeAll { $0 == sayi }
        }
        else {
            if secilenSayilar.count < 6 {
                secilenSayilar.append(sayi)
            }
        }
    }
    private func KazancHesapla(){
        var temp : Set<Int> = []
        while temp.count < 6 {
            let randomSayi = Int.random(in: 1...49)
            temp.insert(randomSayi)
        }
        var temp_two : Set<Int> = Set(secilenSayilar)
        dogruTahminSayisi = temp.intersection(temp_two).count
        cekilenSayilar = Array(temp)
        if dogruTahminSayisi == 0 {
            kazanc = 0
        }
        else if dogruTahminSayisi < 4 {
            kazanc = 1000
        }
        else if dogruTahminSayisi < 6 {
            kazanc = 10000
        }
        else {
            kazanc = 100000
        }
    }
    var body: some View {
        VStack(alignment: .leading){
            HStack()
            {
                Button(action: {suankiEkran = .AnaEkran}) {
                    Image(systemName:"rectangle.portrait.and.arrow.right")
                    Text("Geri")
                }
                .padding([.leading, .bottom], 20.0)
                Spacer()
                Button(action: {
                    if secilenSayilar.count != 6 {return}
                    else{ KazancHesapla()
                        suankiEkran = .KazancEkran}
                    }) {
                    Image(systemName:"play.fill")
                    Text("Oyna")
                }
                .padding(.trailing, 20.0)
            }
            
            Text("Kuponunuz için altı sayı seçin.")
                .font(.system(size:24))
                .padding(.leading, 30.0)
            LazyVGrid(columns: sutunlar, spacing:0){
                ForEach(1...49,id: \.self) {sayi in Button(action: {SecimYap(for: sayi)})
                    {
                        Text("\(sayi)")
                            .frame(width:40,height:40)
                            .background(secilenSayilar.contains(sayi) ? Color.blue : Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    
                }
            }
        }
    }
}

struct SecimEkranView_Previews: PreviewProvider {   static var previews: some View {
    SecimEkranView(suankiEkran: .constant(.SecimEkran), secilenSayilar: .constant([1,2,3]),cekilenSayilar: .constant([1,2,3]),dogruTahminSayisi: .constant(0),kazanc: .constant(10))
    }
}
