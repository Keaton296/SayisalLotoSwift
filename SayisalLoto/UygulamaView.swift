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
    var body: some View {
        VStack{
            switch suankiEkran {
            case .AnaEkran:
                AnaEkranView(suankiEkran: $suankiEkran)
            case .SecimEkran:
                SecimEkranView(suankiEkran: $suankiEkran)
            case .KazancEkran:
                KazancEkranView(suankiEkran: $suankiEkran)
            }
        }
    }
}
struct UygulamaView_Previews: PreviewProvider {
    static var previews: some View {
        UygulamaView()
    }
}
