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
    var body: some View {
        VStack(alignment: .leading){
            Button(action: {suankiEkran = .AnaEkran}) {
                Image(systemName:"rectangle.portrait.and.arrow.right")
                Text("Geri")
            }
            .padding([.leading, .bottom], 20.0)
            
            
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
    SecimEkranView(suankiEkran: .constant(.SecimEkran), secilenSayilar: .constant([1,2,3]))
    }
}
