//
//  AstronautView.swift
//  MicroAge
//
//  Created by Mark Bailey on 07/07/2021.
//

import SwiftUI

struct AstronautView: View {

    @EnvironmentObject var coordinator : Coordinator

    var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .center, spacing: 0){
                Image("astronaut")
                    .imageModifier()
                    .onTapGesture{coordinator.onBack()}
                Text("Coming soon...")
                    .font(.headline)
                    .padding()
                
            }
        }
        .background(Color.white)
        .ignoresSafeArea()
   }

}

struct AstronautView_Previews: PreviewProvider {
    static var previews: some View {
        AstronautView()
    }
}
