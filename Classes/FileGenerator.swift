//
//  FileGenerator.swift
//  MDFileManager
//
//  Created by ryan on 2018/10/23.
//  Copyright © 2018 bechoed. All rights reserved.
//

import UIKit
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
    
    /// 保存图片到文件夹，同步执行
    ///
    /// - Parameters:
    ///   - image: 图片
    ///   - directory: 文件夹
    /// - Returns: 图片路径
    public func save(image: UIImage, in directory: String) throws -> String {
        let imageName = generateMD5FileName()
        let imagePath = try FileManager.default.createfilePath(with: imageName, in: directory)
        let IDImageURL = URL(fileURLWithPath: imagePath, isDirectory: false)
        try image.pngData()?.write(to: IDImageURL, options: .atomicWrite)
        return imagePath
    }
    
    /// 保存图片到缓存文件夹
    ///
    /// - Parameter image: 图片对象
    /// - Returns: 保存成功返回图片路径
    public func saveImgageInCache(image: UIImage) throws -> String {
        guard let cacheDir = FileManager.cacheDirectory else {
            throw FileManagerError.directoryNotExists
        }
        return try save(image: image, in: cacheDir)
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
