//
//  ViewController.swift
//  TEKI
//
//  Created by XAVIER CARLOS on 06/11/2019.
//  Copyright © 2019 Sebastien XAVIER CARLOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var Character = ["Antonio Banderas", "Donald Trump", "Speedy Gonzales", "Darth Vader", "La Reinne Elisabeth II", "Mon voisin", "Jean-Pierre Castaldi", "Alexandre Clain", "Un Power Ranger", "Booba"]
    // 10 éléments
    var Action = ["aime", "regarde souvant", "à déjà léché", "à découvert", "s'est marié avec", "harcéle depuis des années"]
    //6 éléments
    var Target = ["un bidet usagé", "ma voisine", "la statue de Rocky Balboa", "un presbytérien", "le chiwawa de Paris Hilton", "une table de jardin", "une boite de cassoulet"]
    // 7 éléments
    @IBOutlet weak var QuoteLabel: UILabel!
    
    
    @IBAction func ChangeQuote() {
        let RandomIndex1 = Int(arc4random_uniform(UInt32(Character.count)))
        let RandomCharacter = Character[RandomIndex1]
       
        
        let RandomIndex2 = Int(arc4random_uniform(UInt32(Action.count)))
        let RandomAction = Action[RandomIndex2]
       
        
        let RandomIndex3 = Int(arc4random_uniform(UInt32(Target.count)))
        let RandomTarget = Target[RandomIndex3]
       
        let Quote = RandomCharacter + " " + RandomAction + " " + RandomTarget + " !"
        
        QuoteLabel.text = Quote
        
    }
}

