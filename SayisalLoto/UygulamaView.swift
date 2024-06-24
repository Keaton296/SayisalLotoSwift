//
//  ContentView.swift
//  SayisalLoto
//
//  Created by Trakya11 on 24.06.2024.
//

import SwiftUI

enum EkranDurumu {
    case AnaEkran
    case SecimEkran
    case KazancEkran
}
struct UygulamaView: View {
    @State private var suankiEkran: EkranDurumu = .AnaEkran
    @State private var secilenSayilar: [Int] = []
    @State private var cekilenSayilar: [Int] = []
    @State private var dogruTahminSayisi : Int = 0
    @State private var kazanc: Int = 0
    var body: some View {
        VStack{
            switch suankiEkran {
            case .AnaEkran:
                AnaEkranView(suankiEkran: $suankiEkran)
            case .SecimEkran:
                SecimEkranView(suankiEkran: $suankiEkran, secilenSayilar: $secilenSayilar,cekilenSayilar: $cekilenSayilar,dogruTahminSayisi: $dogruTahminSayisi,kazanc: $kazanc)
            case .KazancEkran:
                KazancEkranView(suankiEkran: $suankiEkran,cekilenSayilar: $cekilenSayilar,dogruTahminSayisi: $dogruTahminSayisi,kazanc: $kazanc)
            }
        }
    }
}
struct UygulamaView_Previews: PreviewProvider {
    static var previews: some View {
        UygulamaView()
    }
}

