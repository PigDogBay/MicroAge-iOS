//
//  MissionView.swift
//  MicroAge
//
//  Created by Mark Bailey on 07/07/2021.
//

import SwiftUI

struct MissionView: View {
 
   @EnvironmentObject var coordinator : Coordinator

   var body: some View {
        TabView {
            ForEach(coordinator.missionResources, id: \.self){ mission in
                MissionImageView(imageName: mission)
            }
        }
        .onTapGesture{coordinator.onBack()}
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .background(Color("HomeBackgroundColor"))
        .ignoresSafeArea()    }
}

struct MissionImageView: View {
 
   @EnvironmentObject var coordinator : Coordinator
    
    let imageName : String

   var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .center, spacing: 0){
                Image(imageName)
                    .imageModifier()
            }
        }
    }
}

struct MissionView_Previews: PreviewProvider {
    static var previews: some View {
        MissionView()
    }
}
