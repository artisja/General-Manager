//
//  TeamTableViewController.swift
//  GeneralManager
//
//  Created by Justin Artis on 5/19/17.
//  Copyright © 2017 Justin Artis. All rights reserved.
//

import UIKit
import FirebaseDatabase

class TeamTableViewController: UITableViewController{
    
    var teamSheet = [Player]()
    var budget = 0.0
    var teamName = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var ref : DatabaseReference!
        
        ref = Database.database().reference()
        
       tableView.isScrollEnabled = true
        
        
        
        
        var MarcoReus = Player(pName: "Marco Reus", pCost: 50.6, pAge: 27, pNation: "Germany")
        var LeroySane = Player(pName: "Leroy Sane", pCost: 37.8, pAge: 21, pNation: "Germany")
        var MarcusRashford = Player(pName: "Marcus Rashford", pCost: 10.0, pAge: 19, pNation: "England")
        var JohnnyEvans = Player(pName: "Jonny Evans", pCost: 5.10, pAge: 29, pNation: "England")
        var KeisukeHonda = Player(pName: "Keisuke Honda", pCost: 3.5, pAge: 30, pNation: "Japan")
        var Isco = Player(pName: "Isco", pCost: 35.0, pAge: 25, pNation: "Spain")
        var PaulPogba = Player(pName: "Paul Pogba", pCost: 105.0, pAge: 24, pNation: "France")
        var AlessandroFlorenzi = Player(pName: "Alessandro Florenzi", pCost: 17.0, pAge: 26, pNation: "Italy")
        var ThomasLemar = Player(pName: "Thomas Lemar", pCost: 20.0, pAge: 21, pNation: "France")
        teamSheet.append(MarcoReus)
        teamSheet.append(MarcusRashford)
        teamSheet.append(PaulPogba)
        teamSheet.append(KeisukeHonda)
        teamSheet.append(LeroySane)
        teamSheet.append(JohnnyEvans)
        teamSheet.append(Isco)
        teamSheet.append(AlessandroFlorenzi)
        teamSheet.append(ThomasLemar)

        for player in teamSheet  {
            var dict : [String: Any] = ["Cost" : player.getCost(),"Age": player.getAge(),"Nation": player.getNationality()]

         ref.child(player.getName()).setValue(dict)
        }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.navigationItem.title = teamName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return teamSheet.count
    }
    
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath) as! PlayerCell
        cell.nameLabel.text = teamSheet[indexPath.row].getName()
        cell.transferLabel.text = "Value: \(teamSheet[indexPath.row].getCost())"
        cell.ageLabel.text = "Age: \(teamSheet[indexPath.row].getAge())"
        cell.nationalityLabel.text = "Nation: " + teamSheet[indexPath.row].getNationality()
    

        // Configure the cell...

        return cell
    }
 

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
