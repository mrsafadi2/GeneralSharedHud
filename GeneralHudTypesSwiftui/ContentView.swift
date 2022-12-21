//
//  ContentView.swift
//  GeneralHudTypesSwiftui
//
//  Created by Mohammed Safadi Macbook Pro on 21/12/2022.
//

import SwiftUI


struct ContentView: View {

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Spacer()
            Button("Toast"){
                SharedHud.shared.ErrorHud(message: "Error Message")
            }.padding()
            
            Button("Padder"){
                SharedHud.shared.SuccessHud(message: "Suucess")
            }.padding()
            
            Button("Modal"){
                SharedHud.shared.ModalHud()
            }.padding()
            
            Button("Sheet"){
                SharedHud.shared.SheetHud()
            }.padding()
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
