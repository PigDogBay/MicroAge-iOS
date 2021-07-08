//
//  RootView.swift
//  MicroAge
//
//  Created by Mark Bailey on 07/07/2021.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var coordinator : Coordinator
    
    var body: some View {
        if coordinator.screen == .mission {
            MissionView()
                .transition(.move(edge: .trailing))
        } else if coordinator.screen == .team {
            TeamView()
                .transition(.move(edge: .trailing))
        } else if coordinator.screen == .updates {
            UpdatesView()
                .transition(.move(edge: .trailing))
        } else if coordinator.screen == .badge {
            BadgeView()
                .transition(.move(edge: .trailing))
        } else if coordinator.screen == .astronaut {
            AstronautView()
                .transition(.move(edge: .trailing))
        } else if coordinator.screen == .teamMember {
            TeamMemberView(member: coordinator.teamMember)
                .transition(.move(edge: .trailing))
        } else {
            HomeView()
                .transition(.opacity)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
