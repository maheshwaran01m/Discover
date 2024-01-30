//
//  PlatformExtensions.swift
//  Discover
//
//  Created by MAHESHWARAN on 23/01/24.
//

// MARK: - UIKit

#if canImport(UIKit)
import UIKit

typealias PlatformColor = UIColor

typealias PlatformImage = UIImage

#elseif canImport(AppKit)

// MARK: - AppKit

import AppKit

typealias PlatformColor = NSColor

typealias PlatformImage = NSImage
#endif
