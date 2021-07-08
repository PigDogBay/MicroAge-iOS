//
//  UpdateView.swift
//  MicroAge
//
//  Created by Mark Bailey on 07/07/2021.
//

import SwiftUI

struct UpdatesView: View {
    
    @EnvironmentObject var coordinator : Coordinator

    var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .center, spacing: 0){
                Image("updates")
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

struct UpdateView_Previews: PreviewProvider {
    static var previews: some View {
        UpdatesView()
    }
}
