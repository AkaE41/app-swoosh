//
//  leagueVCViewController.swift
//  app-swoosh
//
//  Created by Khaled on 4/21/19.
//  Copyright © 2019 Khaled. All rights reserved.
//

import UIKit

class leagueVCViewController: UIViewController {

    var player: Player!
    

    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()

       
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        player.desiredLeague = "mens"
        nextBtn.isEnabled = true
    }
    
    @IBAction func womensTapped(_ sender: Any) {
        player.desiredLeague = "womens"
        nextBtn.isEnabled = true
    }
    @IBAction func oncoedTapped(_ sender: Any) {
        player.desiredLeague = "coed"
        nextBtn.isEnabled = true
    }
    
    func selectLeague(leagueType: String){
    player.desiredLeague = leagueType
    nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? skillVC {
            skillVC.player = player
        }
    }
    

}
