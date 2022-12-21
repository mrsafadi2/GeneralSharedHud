//
//  PopoupView.swift
//  GeneralHudTypesSwiftui
//
//  Created by Mohammed Safadi Macbook Pro on 21/12/2022.
//

import SwiftUI

struct PopoupView: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
        }.frame(maxWidth: .infinity , maxHeight: 300)
            .padding(.vertical , 20)
            .background(Color.green)
            .padding(20)
    }
}

struct PopoupView_Previews: PreviewProvider {
    static var previews: some View {
        PopoupView()
    }
}
