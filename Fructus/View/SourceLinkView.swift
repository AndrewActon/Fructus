//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Andrew Acton on 7/7/23.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }//: HStack
            .font(.footnote)
        }
    }//: Body
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
