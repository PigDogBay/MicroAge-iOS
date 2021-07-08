//
//  TeamMemberView.swift
//  MicroAge
//
//  Created by Mark Bailey on 08/07/2021.
//

import SwiftUI

struct TeamMemberView: View {
    @EnvironmentObject var coordinator : Coordinator
    
    let member : TeamMember

    private var sectionInfo : some View {
        VStack(alignment: .leading, spacing: 4){
            Text("Academic Interest")
                .font(.headline)
                .padding(.top)
            Text(member.academic)
                .font(.body)

            Text("Most Fun in the Lab")
                .padding(.top)
                .font(.headline)
            Text(member.lab)
                .font(.body)

            Text("Favourite Planet")
                .padding(.top)
                .font(.headline)
            Text(member.planet)
                .font(.body)

            Text("Fun Fact")
                .padding(.top)
                .font(.headline)
            Text(member.fact)
                .font(.body)

            //Truncation fix https://developer.apple.com/forums/thread/118858
            Text(member.bio)
                .lineLimit(nil)
                .frame(maxHeight: .infinity)
                .font(.body)
                .padding(.top)
        }
    }

    var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .center, spacing: 0){
                Image(member.portraitId)
                    .imageModifier()
                    .onTapGesture{coordinator.onBack()}
                sectionInfo
                    .padding(.leading, 8)
                    .padding(.trailing, 8)
            }
        }
        .background(Color.white)
        .ignoresSafeArea()
    }
}

struct TeamMemberView_Previews: PreviewProvider {
    static var previews: some View {
        TeamMemberView(member: TeamFactory.anne)
            .environmentObject(Coordinator())

    }
}
