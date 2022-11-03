//
//  ViewController.swift
//  HackwichSix
//
//  Created by Kaylene Carnavos on 10/19/22 and 11/2/22.
// I just copied and pasted my Hackwich Six, since something was wrong with the bundle identifier.

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
   var myFriendsArray = ["Katie", "Sam", "Clarissa"]
    
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return myFriendsArray.count
    }
    
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
   {
       let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")
        
        let text = myFriendsArray[indexPath.row]
        
       cell?.textLabel?.text = text
       
       cell?.detailTextLabel?.text = friendsHomeArray[indexPath.row]
        
      return cell!
}
    var friendsHomeArray = ["San Diego", "San Rafael", "Los Angeles"]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var restaurantImageData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
      
        
        restaurantImageData = dict!.object(forKey: "restaurantImages") as! [String]
    

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let s1 = segue.destination as! detailViewController
        let imageViewIndex = tableView.indexPathForSelectedRow?.row
        s1.imagePass = restaurantImageData[imageIndex!]
    }
    
    
    
    
   // var travelBucketListArray = ["Greece", "Egypt", "Amsterdam", "Indonesia", "Thailand"]
    
  //  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
   // {
        
   //     return travelBucketListArray.count
//    }
    
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
 //   {
  //      let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")
        
  //      let text = travelBucketListArray[indexPath.row]
        
  //      cell?.textLabel?.text = text
        
  //      return cell!
  //  }
    

 




}
