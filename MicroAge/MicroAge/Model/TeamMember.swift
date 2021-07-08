//
//  TeamMember.swift
//  MicroAge
//
//  Created by Mark Bailey on 08/07/2021.
//

import Foundation

struct TeamMember : Identifiable, Codable {
    var id : Int
    var academic : String
    var lab : String
    var planet : String
    var fact : String
    var bio : String
    var buttonImage : String
    var portraitId : String
}

struct TeamFactory{
    static let team = [anne, sam, kim, harvey, shah, malc, james, kai, chris, libby, gianluca]
    static let anne = TeamMember(
        id : 0,
        academic: "Music physiology",
        lab: "When experiments work!",
        planet: "Pluto",
        fact: "Training my dog to compete in agility and obedience",
        bio: "I studied Biochemistry at the University of Liverpool and completed my PhD in muscle physiology. The focus of my research is to understand why we lose muscle as we age.",
        buttonImage: "team1_anne",
        portraitId: "anne")
    
    static let sam = TeamMember(
        id : 1,
        academic: "Bio-engineering Muscle",
        lab: "Understanding how muscles generate energy",
        planet: "Saturn",
        fact: "I can say the longest place name in Wales!",
        bio: "I started my scientific journey at Aberystwyth University where I completed a degree in biological sciences. Shortly after I joined the University of Liverpool to complete my Masters and Ph.D in pharmacology, studying how drugs can affect energy generation in synthetic skeletal muscle. My role on the MicroAge project is to develop a functional skeletal muscle model that we can use to study the effects of microgravity on board the international space station.",
        buttonImage: "team2_sam",
        portraitId: "sam")

    static let kim = TeamMember(
        id : 2,
        academic: "Managing lots of different kinds of research projects",
        lab: "Observing a number of exciting experiments",
        planet: "Mars",
        fact: "I worked with NASA on this project!",
        bio: "I started my career in accountancy prior to joining the University of Liverpool in 2015. I enjoy working within a research environment as you get to see a lot of the upcoming research plans first hand. University of Liverpool is great place to work with diverse range of job opportunities.\\n\\n My role on the MicroAge project is to provide efficient co-ordination to the team.",
        buttonImage: "team3_kim",
        portraitId: "kim")

    static let harvey = TeamMember(
        id : 3,
        academic: "Human Anatomy",
        lab: "Growing human muscles",
        planet: "Jupiter",
        fact: "I can do a Rubik's cube in under a minute!",
        bio: "I studied Anatomy and Human Biology at the University of Liverpool and completed a Master's in Musculoskeletal Ageing. During my Master's I joined the MicroAge project and worked on providing information to include in this app!",
        buttonImage: "team4_harvey",
        portraitId: "harvey")

    static let shah = TeamMember(
        id : 4,
        academic: "Senescence",
        lab: "Microscopy (lots of pretty pictures)",
        planet: "Earth, because it has me!",
        fact: "5th level human Monk in DnD, Gold III jungler.",
        bio: "I studied Cell and Molecular Biology at Aston Uni, Birmingham. It was there I came to enjoy the ageing research field. It inspired to me to pursue a PhD in musculoskeletal biology, after which I was recruited for the MicroAge team!",
        buttonImage: "team5_shah",
        portraitId: "shah")

    static let malc = TeamMember(
        id : 5,
        academic: "Muscle physiology",
        lab: "Examining my own muscle under a microscope.",
        planet: "Saturn (I have a small telescope at home)",
        fact: "I built a car!",
        bio: "I studied Biochemistry (BSc) at University of Surrey and completed my PhD at University College London in Physiology and Nutrition.\n\nMicroAge: Originator and Project Director.",
        buttonImage: "team6_malc",
        portraitId: "malc")

    static let james = TeamMember(
        id : 6,
        academic: "Regenerative bioengineering",
        lab: "Growing millions of cells!",
        planet: "Mars",
        fact: "I have a pet tarantulas",
        bio: "My background is in biology, but now do lots of engineering. I'm interested in how biology and engineering can work together to do new types of scientific research and create technologies to help peope. In MicroAge I use my knowledge of biology, and engineering tools like computer-aided design and 3D printing to integrate the human mini-muscles with the space station hardware.",
        buttonImage: "team7_james",
        portraitId: "james")

    static let kai = TeamMember(
        id : 7,
        academic: "Electrical properties of cells and tissues and Instruments for life science applications",
        lab: "Getting a new technology working for the first time",
        planet: "Mercury",
        fact: "I have a Lego model of the ISS",
        bio: "I'm interested in developing lab-on-a-chip or organ-on-a-chip systems building miniature organs that can be used in research to help understand how organs behave. I'm mostly interested in how the electrical properties of the cells or tissue change as they mature or are exposed to drugs. Concentrating on the electrical properties allows working with small samples and gather continuous data that would be more difficult to obtain with methods like microscopy. I originally studied Analytical Chemistry, but over the years have learned Engineering and Life Science skills needed to work on multidisciplinary projects since I enjoy working at the interface between disciplines.\n\nFor MicroAge I developed technology to detect how well muscles contract, based on their electric properties.",
        buttonImage: "team8_kai",
        portraitId: "kai")

    static let chris = TeamMember(
        id : 8,
        academic: "Engineering & Law",
        lab: "When a newly designed silicon chip works first time.",
        planet: "Mars (because I have designed stuff that landed there)",
        fact: "I play the Ukulele, Banjo and Vocals in a couple of bands. ",
        bio: "I studied Computer Engineering at the University of Manchester and later in my career gained an MBA and a PhD in Microelectronics. I now spend most of my professional time in Court (as an Expert Witness) or as an Arbitrator.",
        buttonImage: "team9_chris",
        portraitId: "chris")

    static let libby = TeamMember(
        id : 9,
        academic: "Any science that can be helped by Microgravity!",
        lab: "Finding out what happens in labs up and down the country, and sharing the excitement with the wider public and decision makers in government.",
        planet: "Earth",
        fact: "I used to work in the Columbus Control Centre - Europe's mission control for the ISS, where I was a Columbus Flight Director. (Just like in the movies).",
        bio: "I studied Physics at University, and then Space Engineering. That led me first into spacecraft operations, then into Programme Management. There are lots of routes in the Space Industry, and lots of places a science degree can take you.",
        buttonImage: "teama_libby",
        portraitId: "libby")

    static let gianluca = TeamMember(
        id : 10,
        academic: "",
        lab: "",
        planet: "",
        fact: "",
        bio: "I have more than 25 years of experience in the space industry and collaboration with the European Space Agency, NASA, other National Space Agencies and European research institutions. My competencies range from project management, to payload safety and product assurance, space systems design, qualification and certification, systems engineering, human factors, manned flight operations and mission support. I have a significant experience for programmes supporting investigations on board the International Space Station, in particular for Life Science experiments, in collaboration with the European Space Agency, the Italian Space Agency, the UK Space Agency and NASA.\n\n I coordinated and conducted hardware tests, crew reviews, dry runs, experiment simulations, payload integration and pre/post flight activities at the European Astronaut Centre, Star City (the home base of the Russian cosmonauts), the Russian cosmodromes of Plesetsk and Baikonour, the Kennedy Space Center in Florida (where the hardware launching with US vehicles is prepared), the Johnson Space Center in Texas (where the non-Russian crewmembers are trained for most modules and facilities of the International Space Station). I supported payload operations on board the Space Station with more than a dozen astronauts.",
        buttonImage: "teamb_gianluca",
        portraitId: "gian")
}
