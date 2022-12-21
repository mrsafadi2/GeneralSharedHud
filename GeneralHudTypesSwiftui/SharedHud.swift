//
//  SharedAlter.swift
//  GeneralHudTypesSwiftui
//
//  Created by Mohammed Safadi Macbook Pro on 21/12/2022.
//

import Foundation
import SwiftUI
 
enum HudViewTypes{
    case success,
         error ,
         modal ,
         sheet
}

class SharedHud:ObservableObject{
    static let shared:SharedHud = SharedHud()

    var message:String = ""
    @Published  var isPresented:Bool = false
    @Published  var type : HudViewTypes = .error
   
    func ErrorHud(message:String = "Error Message") {
            self.message = message
            self.type = .error
            self.isPresented = true
    }

    func SuccessHud(message:String = "Suuccess Message") {
            self.message = message
            self.type = .success
            self.isPresented = true
    }
    
    func ModalHud(){
        self.type = .modal
        self.isPresented = true
        
    }
    func SheetHud(){
        self.type = .sheet
        self.isPresented = true
    }
    
 
    
  
 
}

struct HudView<Content:View>  : View {
    let content : Content
     
    init(@ViewBuilder content: () -> Content  ) {
        self.content = content()
     }
    var body: some View {
        content
 
     }
}

