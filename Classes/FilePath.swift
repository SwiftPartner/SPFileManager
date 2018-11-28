//
//  FilePath.swift
//  MDFileManager
//
//  Created by ryan on 2018/10/23.
//  Copyright © 2018 bechoed. All rights reserved.
//

import Foundation

extension FileManager {
    
    public func createfilePath(with fileName: String, in directory: String) throws -> String {
        let directoryURL = NSURL(fileURLWithPath: directory, isDirectory: true)
        if !directoryURL.checkResourceIsReachableAndReturnError(nil) {
            throw FileManagerError.fileNotReachable
        }
        let isDirectory = UnsafeMutablePointer<ObjCBool>(bitPattern: 0)
        guard fileExists(atPath: directory, isDirectory: isDirectory) else {
            throw FileManagerError.fileNotExists
        }
        return directory + "/" + fileName
    }
}
