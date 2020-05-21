//
//  ImageInterpolation.swift
//  MasteringSwiftUI
//
//  Created by Keun young Kim on 2020/04/06.
//  Copyright © 2020 Keun young Kim. All rights reserved.
//

import SwiftUI

struct ImageInterpolation: View {
    var body: some View {
      VStack {
         Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
         
         Image("kxcoding-logo")
            .resizable()
            .interpolation(.low)
         
         Image("kxcoding-logo")
         .resizable()
         .interpolation(.high)
      }
    }
}

struct ImageInterpolation_Previews: PreviewProvider {
    static var previews: some View {
        ImageInterpolation()
    }
}
