//
//  TeamView.swift
//  MicroAge
//
//  Created by Mark Bailey on 07/07/2021.
//

import SwiftUI

struct TeamView: View {
    
    @EnvironmentObject var coordinator : Coordinator
    
    private var sectionThanks : some View {
        VStack {
        }
    }

    var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .center, spacing: 0){
                Image("team0_title")
                    .imageModifier()
                    .onTapGesture{coordinator.onBack()}
                ForEach(TeamFactory.team){ member in
                    Image(member.buttonImage)
                        .imageModifier()
                        .onTapGesture{coordinator.show(teamMember: member)}
                }
                Image("teamc_ta")
                    .imageModifier()
                Text("Miss Sofia Callow\n\nMiss Jessica Dullehan\n\nMiss Sophie Ellie\n\nMiss Jade Warren\n\nThe University of Liverpool Mobile UI Team")
                    .font(.headline)
                    .padding()

            }
        }
        .background(Color.white)
        .ignoresSafeArea()
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}
