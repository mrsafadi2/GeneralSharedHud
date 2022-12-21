//
//  SheetView.swift
//  GeneralHudTypesSwiftui
//
//  Created by Mohammed Safadi Macbook Pro on 21/12/2022.
//

import SwiftUI

struct SheetView: View {

    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)


        }.frame(maxWidth: .infinity , maxHeight: 300)
            .background(Color.white)
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
