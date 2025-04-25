//
//  FileManagerExtension.swift
//  Give Star
//
//  IT114118-2A
//  ITP4206 - Proprietary Mobile Application Development Project Guide
//  Created by 210056555 Tang Chung Ming
//  Created by 210069121 Shek Wai Kit
//  Created by 210397362 Cheng Man Hei
//

import Foundation

public extension FileManager {
    static var documentDirectoryURL: URL = {
        FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }()
}
