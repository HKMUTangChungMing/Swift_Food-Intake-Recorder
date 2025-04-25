//
//  FileManagerExtension.swift
//  FoodTracker
//
//  Created by Mark Kim on 9/1/20.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import Foundation

public extension FileManager {
    static var documentDirectoryURL: URL = {
        FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }()
}
