//
//  ErrorView.swift
//  BaseSwiftUI2022
//
//  Created by i mac on 21/09/2022.
//

import SwiftUI

struct ErrorView: View {
    @Binding var error:String
     var body: some View {
        ZStack(alignment: .top) {
            VStack {
                ZStack {
                    Color.red.ignoresSafeArea().frame(maxWidth: .infinity , minHeight: 50 ,maxHeight: 140)
                    HStack(alignment:.center) {
                        Image(systemName: "exclamationmark.icloud.fill")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 24 ,height: 24)
                        if let error  = error {
                            Text(LocalizedStringKey(error))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                         }
                        
                    }.padding().fixedSize(horizontal: false, vertical: true)

                }
                Spacer()
            }
        }
 
     
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ErrorView(error: Binding.constant(""))

            ErrorView(error: Binding.constant("")).colorScheme(.dark)
        }.previewLayout(.sizeThatFits)

    }
}
