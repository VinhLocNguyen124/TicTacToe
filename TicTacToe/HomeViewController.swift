//
//  HomeViewController.swift
//  TicTacToe
//
//  Created by admin on 8/5/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var color1 = UIColor(red: 255/255, green: 153/255, blue: 255/255, alpha: 0.7)
    var color2 = UIColor(red: 153/255, green: 204/255, blue: 255/255, alpha: 1)
    var color3 = UIColor(red: 255/255, green: 204/255, blue: 153/255, alpha: 1)
    var color4 = UIColor(red: 153/255, green: 255/255, blue: 102/255, alpha: 0.7)
    
    @IBOutlet weak var btnOffline: UIButton!
    @IBOutlet weak var btnOnline: UIButton!
    @IBOutlet weak var btnExit: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designButtonUI(btn: btnOffline,bgcl: color1)
        designButtonUI(btn: btnOnline,bgcl: color2)
        designButtonUI(btn: btnExit,bgcl: color4)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToHomeViewController (for unwindSegue: UIStoryboardSegue) {
        
    }
    
    func designButtonUI(btn: UIButton,bgcl: UIColor){
        btn.backgroundColor = bgcl
        //btn.contentEdgeInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        //Shadow and Radius
        btn.layer.shadowColor = UIColor(red: 255, green: 0, blue: 0, alpha: 0.25).cgColor
        btn.layer.shadowOffset = CGSize(width: 7.0, height: 7.0)
        btn.layer.shadowOpacity = 0.3
        btn.layer.shadowRadius = 0.5
        btn.layer.masksToBounds = false
        btn.layer.cornerRadius = 10.0
        btn.layer.borderColor = UIColor.cyan.cgColor
        btn.layer.borderWidth = 1
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
