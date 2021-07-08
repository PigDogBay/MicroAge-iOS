//
//  Coordinator.swift
//  MicroAge
//
//  Created by Mark Bailey on 07/07/2021.
//

import Foundation

enum Screen {
    case home, mission, badge, astronaut, team, updates, teamMember
}

class Coordinator : ObservableObject {
    @Published var screen = Screen.home
    
    var teamMember = TeamFactory.anne
    
    let missionResources = ["mission0","mission1","mission2","mission3","mission4","mission5","mission6","mission7","mission8","mission9","mission10"]
    
    func show(screen : Screen){
        self.screen = screen
    }
    
    func onBack(){
        if self.screen == .teamMember {
            self.screen = .team
        } else {
            self.screen = .home
        }
    }
    
    func show(teamMember : TeamMember){
        self.teamMember = teamMember
        self.screen = Screen.teamMember
    }
}
