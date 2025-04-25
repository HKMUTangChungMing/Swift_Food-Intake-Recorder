//
//  MealTableViewController.swift
//  FoodTracker
//
//  Created by Jane Appleseed on 11/15/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit
import os.log

class MealTableViewController: UITableViewController {
    
    //MARK: Properties
    
    var meals = [Meal]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Use the edit button item provided by the table view controller.
        navigationItem.leftBarButtonItem = editButtonItem
        
        // Load any saved meals, otherwise load sample data
        if let savedMeals = loadMeals() {
            meals += savedMeals
        } else {
            // Load the sample data.
            loadSampleMeals()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "MealTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MealTableViewCell  else {
            fatalError("The dequeued cell is not an instance of MealTableViewCell.")
        }
        
        // Fetches the appropriate meal for the data source layout.
        let meal = meals[indexPath.row]
        
        cell.nameLabel.text = meal.name
        cell.photoImageView.image = meal.photo
        cell.ratingControl.rating = Int(meal.rating)
        
        return cell
    }
    
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            /* TODO: Delete a meal
              1. remove the element from the array
              2. save the changes in the txt file
              3. use the method tableView.deleteRows with the correct indexPath and choose an animation style
            */
            meals.remove(at: indexPath.row)
           
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.reloadData()
            saveMeals()
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
            // Not used

        }
    }
    
    
    //MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        super.prepare(for: segue, sender: sender)
        
        switch(segue.identifier ?? "") {
            
        case "AddItem":
            os_log("Adding a new meal.", log: OSLog.default, type: .debug)
            
        case "ShowDetail":
            guard let mealDetailViewController = segue.destination as? MealViewController else {
                fatalError("Unexpected destination: \(segue.destination)")
            }
            
            guard let selectedMealCell = sender as? MealTableViewCell else {
                fatalError("Unexpected sender: \(String(describing: sender))")
            }
            
            guard let indexPath = tableView.indexPath(for: selectedMealCell) else {
                fatalError("The selected cell is not being displayed by the table")
            }
            
            let selectedMeal = meals[indexPath.row]
            mealDetailViewController.meal = selectedMeal
            
        default:
            fatalError("Unexpected Segue Identifier; \(String(describing: segue.identifier))")
        }
    }
    
    
    //MARK: Actions
    
    @IBAction func unwindToMealList(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? MealViewController, let meal = sourceViewController.meal {
            
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                /*TODO: Update an existing meal
                 1. use the selectedIndexPath.row to save the received meal in the correct position in the meals array
                 2. use the method tablleView.reloadRows with the selected indexPath and choose an animation style
                */
                meals[selectedIndexPath.row] = meal
                tableView.reloadRows(at: [selectedIndexPath], with: .fade)
            }
            else {
                /*TODO: Add a new meal to the list
                 1. Create a new IndexPath pointing to the end of the list
                 2. Append the new meal to the existing meals array
                 3. use the method tableView.insertRows with the index path you created and choose an animation style
                 */
                let indexPath = IndexPath(row: meals.count, section: 0)
                meals.append(meal)
                tableView.insertRows(at: [indexPath], with: .fade)
            }
            
            //TODO: Make sure to save the meal list when going back to the table
            saveMeals()

        }
    }
    
    //MARK: Private Methods
    
    private func loadSampleMeals() {
        
        let photo1 = UIImage(named: "meal1")
        let photo2 = UIImage(named: "meal2")
        let photo3 = UIImage(named: "meal3")
        
        guard let meal1 = Meal(name: "Caprese Salad", photo: photo1, rating: 4) else {
            fatalError("Unable to instantiate meal1")
        }
        
        guard let meal2 = Meal(name: "Chicken and Potatoes", photo: photo2, rating: 5) else {
            fatalError("Unable to instantiate meal2")
        }
        
        guard let meal3 = Meal(name: "Pasta with Meatballs", photo: photo3, rating: 3) else {
            fatalError("Unable to instantiate meal2")
        }
        
        meals += [meal1, meal2, meal3]
    }
    
    private func saveMeals() {
        //TODO: Use JSONEncoder to get save data in Meals.txt located in Documents Directory
        let encoder = JSONEncoder()
        let encodedData = try? encoder.encode(meals)
        
        do {
            try encodedData?.write(to: FileManager.documentDirectoryURL.appendingPathComponent("Meals.txt"))
        } catch {
            print(error)
        }

       
    }
    
    private func loadMeals() -> [Meal]? {
        
        //TODO: Use JSONDecoder to get data from a file called: Meals.txt located in Documents Directory
        let decoder = JSONDecoder()
        do {
            let decodedData = try Data.init(contentsOf: FileManager.documentDirectoryURL.appendingPathComponent("Meals.txt"))
            if let meals = try? decoder.decode([Meal].self, from: decodedData){
                return meals
            }
        } catch {
            print(error)
        }
        
        return nil
    }
    
}
