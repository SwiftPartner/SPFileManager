//
//  FileGenerator.swift
//  MDFileManager
//
//  Created by ryan on 2018/10/23.
//  Copyright © 2018 bechoed. All rights reserved.
//

import Foundation
import CommonCrypto

extension FileManager {
    
    /// 以当前时间的时间戳的md5值作为文件名
    ///
    /// - Parameter suffix: 后缀
    /// - Returns: 当前时间戳的md5值 + 后缀生成的字符串
    public func generateMD5FileName(suffix: String = "") -> String {
        let dateStamp  = Date().timeIntervalSince1970
        let fileName = MD5(string: "\(dateStamp)")
        return fileName + suffix
    }
    
    
    /// 创建md5字符串
    ///
    /// - Returns: MD5字符串
    private func MD5(string: String) -> String {
        let messageData = string.data(using:.utf8)!
        var digestData = Data(count: Int(CC_MD5_DIGEST_LENGTH))
        _ = digestData.withUnsafeMutableBytes {digestBytes in
            messageData.withUnsafeBytes {messageBytes in
                CC_MD5(messageBytes, CC_LONG(messageData.count), digestBytes)
            }
        }
        let md5Hex = digestData.map { String(format: "%02hhx", $0) }.joined()
        return md5Hex
    }
}
