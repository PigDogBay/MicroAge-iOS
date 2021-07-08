//
//  BadgeView.swift
//  MicroAge
//
//  Created by Mark Bailey on 07/07/2021.
//

import SwiftUI

struct BadgeView: View {
 
   @EnvironmentObject var coordinator : Coordinator

    private var sectionIntro : some View {
        VStack {
            Text("Every expedition to the International Space Station (ISS) has a unique badge. Typically, the designs feature images that represent the mission.")
                .font(.headline)
                .padding(.top)
            //Truncation fix https://developer.apple.com/forums/thread/118858
            Text("How would you design your badge if you were headed to space? We are running a competition to include 24 personalised mission badges within our experiment to the ISS in November 2021! To take part in this exciting opportunity and to have your design flown into space, we encourage you to submit your design as soon as possible.")
                .lineLimit(nil)
                .frame(maxHeight: .infinity)
                .font(.body)
                .padding(.top)
            Text("Deadline for all submissions is 31st March 2021.")
                .font(.body)
                .fontWeight(.bold)
                .padding(.top)
        }
    }

    private var sectionMaterials : some View {
        VStack {
            Text("Materials required")
                .font(.headline)
                .padding(.top)
            Text("★ Mission badge worksheet or large blank piece of paper. Badges come in a wide variety of shapes - these are just a starting point!")
                .font(.body)
                .padding(.top)
            Text("★ Pencils, coloured pencils, markers, etc.")
                .font(.body)
                .padding(.top)
        }
    }

    private var sectionGuidance : some View {
        VStack {
            Text("Activity guidance")
                .font(.headline)
                .padding(.top)
            Text("★ Designs must incorporate the following areas; Liverpool, Muscles, Aging and Space. Please note, we can not include anything which is copyrighted.")
                .font(.body)
                .padding(.top)
            Text("★ Please include a few sentences to explain your design.")
                .font(.body)
                .padding(.top)
            Text("★ Successful designs will be sent to a print company to be turned into a final mission badge")
                .font(.body)
                .padding(.top)
        }
    }

    var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .center, spacing: 0){
                Image("badge")
                    .imageModifier()
                    .onTapGesture{coordinator.onBack()}
                sectionIntro.padding()
                sectionMaterials.padding()
                sectionGuidance.padding()
                Image("badge_upload")
                    .imageModifier()
                    .padding()
            }

        }
        .background(Color.white)
        .ignoresSafeArea()
   }
}

struct BadgeView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeView()
    }
}
