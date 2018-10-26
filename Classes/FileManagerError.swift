//
//  FileManagerError.swift
//  MDFileManager
//
//  Created by ryan on 2018/10/23.
//  Copyright © 2018 bechoed. All rights reserved.
//

import Foundation

enum FileManagerError: Error {
    case directoryNotExists
    case fileNotExists
    case fileNotReachable
}
