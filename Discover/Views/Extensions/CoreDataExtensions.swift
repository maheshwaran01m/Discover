//
//  CoreDataExtensions.swift
//  Discover
//
//  Created by MAHESHWARAN on 23/01/24.
//

import Foundation
import CoreData

extension NSManagedObjectContext {
  
  @discardableResult
  public func saveIfNeeded() throws -> Bool {
    guard hasChanges else { return false }
    try save()
    return true
  }
}
