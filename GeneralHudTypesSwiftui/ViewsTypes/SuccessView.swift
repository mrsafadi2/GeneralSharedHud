//
//  SuccessView.swift
//  BaseSwiftUI2022
//
//  Created by i mac on 21/09/2022.
//

import SwiftUI


struct SuccessView: View {
    @Binding var susscess:String
 
    var body: some View {
             ZStack() {
                Color.green.ignoresSafeArea()
                Rectangle()
                    .fill(.green)
                    .frame(maxWidth: .infinity, alignment: .leading)
                HStack(alignment: .center){
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 24 ,height: 24)
                    Text("\(self.susscess)")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
 

                    .foregroundColor(.white)

                }.padding().fixedSize(horizontal: false, vertical: true)

            }.frame(maxWidth: .infinity , minHeight: 50 ,maxHeight: 80)
 
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {

         Group{
             SuccessView(susscess: Binding.constant(""))

             SuccessView(susscess: Binding.constant("")).colorScheme(.dark)
         }.previewLayout(.sizeThatFits)
    }
}
