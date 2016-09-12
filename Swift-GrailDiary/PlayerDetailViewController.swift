//
//  PlayerDetailViewController.swift
//  Swift-GrailDiary
//
//  Created by Ross Gottschalk on 8/17/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit

class PlayerDetailViewController: UIViewController
{
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var teamLabel: UILabel!
    @IBOutlet weak var statsLabel: UILabel!
    
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var teamImage: UIImageView!
    var player: PlayerClass?
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        nameLabel.text = player?.name
        positionLabel.text = player?.position
        teamLabel.text = player?.team
        statsLabel.text = player?.stats
        
        
        
        playerImage.image = UIImage(named: "\(player?.picture)")//.png")
        
        //Kawhi Leonard's image doesn't show. Thus causing compiling errors
        
        teamImage.image = UIImage(named: "\(player?.teamLogo)")//.gif")
        //teamImage.image = UIImage(named: "\(player?.teamLogo).png")
        

        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
