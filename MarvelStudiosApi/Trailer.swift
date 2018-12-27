//
//  Trailer.swift
//  MarvelStudiosApi
//
//  Created by Ibraheem rawlinson on 12/27/18.
//  Copyright © 2018 Ibraheem rawlinson. All rights reserved.
//

import Foundation

struct Trailer {
    let trailerName: String
    let videoFileName: String
    let trailerdescription: String
    let thumbnailFileName: String
    
    static func fetchVideos() -> [Trailer] {
        let trailer1 = Trailer(trailerName: "Ant Man & The Wasp", videoFileName: "AATW", trailerdescription: "Lang must once again don the Ant-Man suit and fight alongside the Wasp", thumbnailFileName: "AntMan2")
        let trailer2 = Trailer(trailerName: "Ant Man", videoFileName: "AntMan", trailerdescription: "Scott Lang is grappling with the consequences of his choices as both a superhero and a father", thumbnailFileName: "AntMan1")
        let trailer3 = Trailer(trailerName: "Avengers: Age of Ultron", videoFileName: "AOU", trailerdescription: "As the fate of Earth hangs in the balance, the team is put to the ultimate test as they battle Ultron, a technological terror hell-bent on human extinction.", thumbnailFileName: "Ultron")
        let trailer4 = Trailer(trailerName: "Avengers", videoFileName: "Avengers", trailerdescription: "Earth's mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army", thumbnailFileName: "Avengers")
        let trailer5 = Trailer(trailerName: "Captain Marvel", videoFileName: "CaptainMarvel", trailerdescription: "Captain Marvel gets caught in the middle of a galactic war between two alien races.", thumbnailFileName: "CM")
        let trailer6 = Trailer(trailerName: "Captain America: The First Avenger", videoFileName: "CATFA", trailerdescription: "Steve Rogers (Chris Evans) wants to do his part and join America's armed forces, but the military rejects him because of his small stature. Finally, Steve gets his chance when he is accepted into an experimental program that turns him into a supersoldier called Captain America.", thumbnailFileName: "CA")
        let trailer7 = Trailer(trailerName: "Black Panther", videoFileName: "BlackPanther", trailerdescription: "After the death of his father, T'Challa returns home to the African nation of Wakanda to take his rightful place as king. When a powerful enemy suddenly reappears, T'Challa's mettle as king and as Black Panther gets tested when he's drawn into a conflict that puts the fate of Wakanda and the entire world at risk. Faced with treachery and danger, the young king must rally his allies and release the full power of Black Panther to defeat his foes and secure the safety of his people.", thumbnailFileName: "BP")
        let trailer8 = Trailer(trailerName: "Captain America: Winter Soldier", videoFileName: "CAWS", trailerdescription: "After the cataclysmic events in New York with his fellow Avengers, Steve Rogers, aka Captain America (Chris Evans), lives in the nation's capital as he tries to adjust to modern times...", thumbnailFileName: "CA2")
        let trailer9 = Trailer(trailerName: "Captain America: Civil War", videoFileName: "CivilWar", trailerdescription: "Political pressure mounts to install a system of accountability when the actions of the Avengers lead to collateral damage. The new status quo deeply divides members of the team. Captain America (Chris Evans) believes superheroes should remain free to defend humanity without government interference", thumbnailFileName: "CA3")
        let trailer10 = Trailer(trailerName: "Thor: The Dark World", videoFileName: "DarkWorld", trailerdescription: "In ancient times, the gods of Asgard fought and won a war against an evil race known as the Dark Elves. The survivors were neutralized, and their ultimate weapon -- the Aether -- was buried in a secret location....", thumbnailFileName: "Thor2")
        let trailer11 = Trailer(trailerName: "Deadpool", videoFileName: "Deadpool", trailerdescription: "Wade Wilson (Ryan Reynolds) is a former Special Forces operative who now works as a mercenary. His world comes crashing down when evil scientist Ajax (Ed Skrein) tortures, disfigures and transforms him into Deadpool", thumbnailFileName: "DP1")
        let trailer12 = Trailer(trailerName: "Deadpool 2", videoFileName: "Deadpool2", trailerdescription: "Wisecracking mercenary Deadpool meets Russell, an angry teenage mutant who lives at an orphanage.", thumbnailFileName: "DP2")
        let trailer13 = Trailer(trailerName: "Dr. Strange", videoFileName: "DrStrange", trailerdescription: "Dr. Stephen Strange's (Benedict Cumberbatch) life changes after a car accident robs him of the use of his hands. When traditional medicine fails him, he looks for healing, and hope, in a mysterious enclave.", thumbnailFileName: "DS")
        let trailer14 = Trailer(trailerName: "Avengers: End Game", videoFileName: "EndGame", trailerdescription: "Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle. Meanwhile, the remaining Avengers -- Thor, Black Widow, Captain America and Bruce Banner -- must figure out a way to bring back their vanquished allies for an epic showdown with..", thumbnailFileName: "EG")
        let trailer15 = Trailer(trailerName: "Spider-Man: Far From Home", videoFileName: "FFH", trailerdescription: "Spider-Man: Far From Home is an upcoming American superhero film based on the Marvel Comics character Spider-Man, produced by Columbia Pictures and Marvel Studios, and distributed by Sony Pictures Releasing.", thumbnailFileName: "FFH1")
        let trailer16 = Trailer(trailerName: "X-Men: First Class", videoFileName: "FirstClass", trailerdescription: "In the early 1960s, during the height of the Cold War, a mutant named Charles Xavier (James McAvoy) meets a fellow mutant named Erik Lehnsherr (Michael Fassbender).", thumbnailFileName: "xfc")
        let trailer17 = Trailer(trailerName: "Guardians of the Galaxy", videoFileName: "GOTG", trailerdescription: "Brash space adventurer Peter Quill (Chris Pratt) finds himself the quarry of relentless bounty hunters after he steals an orb coveted by Ronan, a powerful villain. To evade Ronan, Quill is forced into an uneasy truce with four disparate misfits", thumbnailFileName: "gotg")
        let trailer18 = Trailer(trailerName: "Guardians of the Galaxy Vol. 2", videoFileName: "GOTG2", trailerdescription: "Peter Quill and his fellow Guardians are hired by a powerful alien race, the Sovereign, to protect their precious batteries from invaders. When it is discovered that Rocket has stolen the items they were sent to guard, the Sovereign dispatch their armada to search for vengeance.", thumbnailFileName: "gotg")
        let trailer19 = Trailer(trailerName: "Spider-Man: Homecoming", videoFileName: "HC", trailerdescription: "Thrilled by his experience with the Avengers, young Peter Parker returns home to live with his Aunt May. Under the watchful eye of mentor Tony Stark, Parker starts to embrace his newfound identity as Spider-Man.", thumbnailFileName: "hc")
        let trailer20 = Trailer(trailerName: "Hulk", videoFileName: "Hulk", trailerdescription: "Scientist Bruce Banner (Edward Norton) desperately seeks a cure for the gamma radiation that contaminated his cells and turned him into The Hulk. Cut off from his true love Betty Ross (Liv Tyler) and forced to hide from his nemesis, Gen. Thunderbolt Ross (William Hurt), Banner soon comes face-to-face", thumbnailFileName: "hulk")
        let trailer21 = Trailer(trailerName: "Iron Man", videoFileName: "IronMan", trailerdescription: "How he became Iron Man", thumbnailFileName: "i1")
        let trailer22 = Trailer(trailerName: "Iron Man 2", videoFileName: "IronMan2", trailerdescription: "After the first Iron Man movie", thumbnailFileName: "i2")
        let trailer23 = Trailer(trailerName: "Iron Man 3", videoFileName: "IronMan3", trailerdescription: "After the second Iron Man movie", thumbnailFileName: "i3")
        let trailer24 = Trailer(trailerName: "Logan", videoFileName: "Logan", trailerdescription: "In the near future, a weary Logan (Hugh Jackman) cares for an ailing Professor X (Patrick Stewart) at a remote outpost on the Mexican border. His plan to hide from the outside world gets upended when he meets a young mutant (Dafne Keen) who is very much like him. Logan must now protect the girl and battle the dark forces that want to capture her.", thumbnailFileName: "logan")
        let trailer25 = Trailer(trailerName: "Thor: Ragnarok", videoFileName: "Ragnarok", trailerdescription: "The end of Asgaurd", thumbnailFileName: "ragnarok")
        let trailer26 = Trailer(trailerName: "Spiderman", videoFileName: "SpidermanOT", trailerdescription: "One minute he's Peter Parker the college student, and the next he's Spiderman.", thumbnailFileName: "os")
        let trailer27 = Trailer(trailerName: "Spider-Man: Into the Spider-Verse", videoFileName: "Spiderverse", trailerdescription: "Bitten by a radioactive spider in the subway, Brooklyn teenager Miles Morales suddenly develops mysterious powers that transform him into the one and only Spider-Man. When he meets Peter Parker, he soon realizes that there are many others who share his special, high-flying talents. Miles must now use his newfound skills to battle the evil Kingpin, a hulking madman who can open portals to other universes and pull different versions of Spider-Man into our world.", thumbnailFileName: "SITSV")
        let trailer28 = Trailer(trailerName: "The Amazing Spider-Man", videoFileName: "TAS", trailerdescription: "orgin of spider man ft lizard man", thumbnailFileName: "tas")
        let trailer29 = Trailer(trailerName: "The Amazing Spider-Man 2", videoFileName: "TAS2", trailerdescription: "this moive feature electro and the hob gobblin", thumbnailFileName: "tas2")
        let trailer30 = Trailer(trailerName: "Thor", videoFileName: "Thor", trailerdescription: "who is Thor", thumbnailFileName: "t1")
        let trailer31 = Trailer(trailerName: "Venom", videoFileName: "Venom", trailerdescription: "how venom became venom", thumbnailFileName: "venom")
        let trailer32 = Trailer(trailerName: "X-Men Opening", videoFileName: "XMenOT", trailerdescription: "Classic X-Men Show", thumbnailFileName: "xMen")
        return [trailer1,trailer2,trailer3,trailer4,trailer5,trailer6,trailer7,trailer8,trailer9,trailer10,trailer11,trailer12,trailer13,trailer14,trailer15,trailer16,trailer17,trailer18,trailer19,trailer20,trailer21,trailer22,trailer23,trailer24,trailer25,trailer26,trailer27,trailer28,trailer29,trailer30,trailer31,trailer32]
    }
    
}
