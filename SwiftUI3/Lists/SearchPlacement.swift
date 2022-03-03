//
//  SearchPlacement.swift
//  Lists
//
//  Created by KxCoding on 2022/03/07.
//

import SwiftUI

struct SearchPlacement: View {
    @State private var keyword = ""
    
    var body: some View {
        NavigationView {
            List {
                Text("1")
                Text("2")
                Text("3")
            }
            .navigationTitle("First")
            
            List {
                Text("One")
                Text("Two")
                Text("Three")
            }
            .navigationTitle("Second")
        }
        .searchable(text: $keyword, placement: .automatic)
    }
}

struct SearchPlacement_Previews: PreviewProvider {
    static var previews: some View {
        SearchPlacement()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
