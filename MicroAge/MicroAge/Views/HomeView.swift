//
//  HomeVIew.swift
//  MicroAge
//
//  Created by Mark Bailey on 07/07/2021.
//

import SwiftUI

struct HomeView: View {

    @EnvironmentObject var coordinator : Coordinator
    
    private func show(screen : Screen){
        withAnimation{
            coordinator.show(screen: screen)
        }
    }

    var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .center, spacing: 0){
                Image("home_title")
                    .imageModifier()
                Image("home_mission_button")
                    .imageModifier()
                    .onTapGesture{show(screen: .mission)}
                Image("home_badge")
                    .imageModifier()
                    .onTapGesture{show(screen: .badge)}
                Image("home_astronaut")
                    .imageModifier()
                    .onTapGesture{show(screen: .astronaut)}
                Image("home_team")
                    .imageModifier()
                    .onTapGesture{show(screen: .team)}
                Image("home_updates")
                    .imageModifier()
                    .onTapGesture{show(screen: .updates)}
                Spacer()
            }
        }
        .background(Color("HomeBackgroundColor"))
        .ignoresSafeArea()

    }
}

struct HomeVIew_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
