//
//  SwiftUIExtensions.swift
//  MicroAge
//
//  Created by Mark Bailey on 07/07/2021.
//

import SwiftUI


extension Image {
    func imageModifier() -> some View{
        self.resizable()
            .aspectRatio(contentMode: .fit)
    }
}
