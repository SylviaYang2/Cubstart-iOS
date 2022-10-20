//
//  CustomCell.swift
//  List&Custom Cell Lec 5
//
//  Created by Sylvia Yang on 10/13/22.
//

import SwiftUI

struct CustomCell: View {
    var imagename: String
    var text: String
    @State private var airplane = true
    
    var body: some View {
        HStack {
            Image(imagename)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 20, height: 20)
            
            if imagename == "airplane" {
                Toggle(text, isOn: $airplane)
            } else {
                Text(text)
            }
        }
    }
}

//struct CustomCell_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomCell()
//    }
//}
