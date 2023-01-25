//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Ahmad Rusdani on 09/01/23.
//

import Foundation
import UIKit

extension UIImage {
    func resizeImage(targetSize: CGSize) -> UIImage? {
        let size = self.size

        let widthRatio  = targetSize.width  / (self.size.width)
        let heightRatio = targetSize.height / (self.size.height)

        // Figure out what our orientation is, and use that to form the rectangle
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSizeMake((size.width) * heightRatio, (size.height) * heightRatio)
        } else {
            newSize = CGSizeMake((size.width) * widthRatio,  (size.height) * widthRatio)
        }

        // This is the rect that we've calculated out and this is what is actually used below
        let rect = CGRectMake(0, 0, newSize.width, newSize.height)

        // Actually do the resizing to the rect using the ImageContext stuff
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        self.draw(in: rect)
        var newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        newImage = newImage?.withRenderingMode(.alwaysOriginal)

        return newImage
    }
}

extension String {
    func capitalizedFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
