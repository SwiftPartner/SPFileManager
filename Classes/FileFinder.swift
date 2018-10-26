//
//  FileFinder.swift
//  MDFileManager
//
//  Created by ryan on 2018/10/23.
//  Copyright © 2018 bechoed. All rights reserved.
//

import Foundation

extension FileManager {
    
    /// 从文件路径获取文件名
    ///
    /// - Parameter filePath: 文件路径
    /// - Returns: 如果路径为空，返回nil，否则返回路径以路径分隔符分开的最后一部分
    public func fileName(from filePath: String) -> String? {
        if filePath.isEmpty {
            return nil
        }
        let fileUrl = URL(fileURLWithPath: filePath)
        let fileName = fileUrl.lastPathComponent
        return fileName
    }
    
    
    
}
