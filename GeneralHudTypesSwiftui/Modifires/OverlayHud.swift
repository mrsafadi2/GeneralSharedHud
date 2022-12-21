//
//  View.swift
//  GeneralHudTypesSwiftui
//
//  Created by Mohammed Safadi Macbook Pro on 21/12/2022.
//

import Foundation
import SwiftUI
import PopupView

 
struct OverlayHud: ViewModifier {
    @StateObject var sharedHud = SharedHud.shared
   
    func body(content: Content) -> some View {
       // HudView in conainter view builder 
        HudView{
            switch sharedHud.type {
                case .success : content.popup(isPresented: $sharedHud.isPresented ,
                                              type: .floater(verticalPadding: 20,useSafeAreaInset: false)
                                              ,position: .top, animation: .easeIn) {
                        SuccessView(susscess: .constant("Success Message"))
                    }
                case .error: content.popup(isPresented: $sharedHud.isPresented ,
                                       type: .toast ,
                                       position: .top,
                                       animation: .default) {
                        ErrorView(error: .constant("Error Message"))
                    }
                
                case .modal:content.popup(isPresented: $sharedHud.isPresented,
                                          type: .default , animation: .easeIn,
                                          backgroundColor: Color.black.opacity(0.5) ) {
                        PopoupView()
                    }
                case .sheet:content.popup(isPresented: $sharedHud.isPresented,
                                          type: .floater(verticalPadding: 0, useSafeAreaInset: false) ,
                                          backgroundColor: Color.black.opacity(0.5)) {
                        SheetView()
                    }
            }
        }
    }
 
}

extension View {
 
    func overlayHud() -> some View {
        self.modifier(OverlayHud())
    }
    
}
