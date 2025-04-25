//
//  Meal.swift
//  FoodTracker
//
//  Created by Jane Appleseed on 11/10/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit
import os.log


class Meal: Codable {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }

        // The rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
        
    }
    
    //MARK: Codable
    
    enum CodingKeys: String, CodingKey {
        case name
        case photo
        case rating
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        let photoData = try container.decode(Data.self, forKey: .photo)
        photo = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(photoData) as? UIImage
        rating = try container.decode(Int.self, forKey: .rating)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        let photoData = try NSKeyedArchiver.archivedData(withRootObject: photo as Any, requiringSecureCoding: false)
        try container.encode(photoData, forKey: .photo)
        try container.encode(rating, forKey: .rating)
    }
}
