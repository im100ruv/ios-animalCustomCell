//
//  ViewController.swift
//  AnimalCustomCell
//
//  Created by Im100ruv on 22/01/18.
//  Copyright © 2018 Im100ruv. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var animalTableView: UITableView!
    
    var animals = [Animal]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animalTableView.delegate = self
        animalTableView.dataSource = self
        
        let cat = Animal(name: "Cat", sound: "meow", size: "small")
        let dog = Animal(name: "Dog", sound: "bark", size: "medium")
        let horse = Animal(name: "Horse", sound: "neigh", size: "large")
        
        animals.append(cat)
        animals.append(dog)
        animals.append(horse)
        animals.append(cat)
        animals.append(dog)
        animals.append(horse)
        animals.append(cat)
        animals.append(dog)
        animals.append(horse)
        animals.append(cat)
        animals.append(dog)
        animals.append(horse)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let animalCustomCell = animalTableView.dequeueReusableCell(withIdentifier: "customCell") as! AnimalCustomCell
        
        animalCustomCell.cellView.layer.cornerRadius = animalCustomCell.cellView.frame.height / 2
        animalCustomCell.animalImg.layer.cornerRadius = animalCustomCell.animalImg.frame.height / 2
        
        animalCustomCell.animalImg.image = animals[indexPath.row].image
        animalCustomCell.animalLbl.text = animals[indexPath.row].name
        
        return animalCustomCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? AnimalDetailsVC {
            destination.animal = animals[(animalTableView.indexPathForSelectedRow?.row)!]
        }
    }
    

}

