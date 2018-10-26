//
//  SystemDirectory.swift
//  MDFileManager
//
//  Created by ryan on 2018/10/23.
//  Copyright © 2018 bechoed. All rights reserved.
//

import Foundation

extension FileManager {
    
    public func systemDirectory(directory: FileManager.SearchPathDirectory) -> String? {
        let directory = NSSearchPathForDirectoriesInDomains(directory, .userDomainMask, true).first
        return directory
    }
    

}
