//
//  SecimEkranView.swift
//  SayisalLoto
//
//  Created by Trakya11 on 24.06.2024.
//

import SwiftUI

struct SecimEkranView: View {
    @Binding var suankiEkran: EkranDurumu
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SecimEkranView_Previews: PreviewProvider {
    static var previews: some View {
        SecimEkranView(suankiEkran: .constant(.SecimEkran))
    }
}
