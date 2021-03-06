//
//  Copyright © 2015 Itty Bitty Apps. All rights reserved.

import Foundation

struct Country: Collectable {

  private enum Attributes: String {
    case name = "name"
    case capitalCity = "capital"
  }

  let name: String
  let capital: String?

  init(dictionary: [String: AnyObject]) {
    guard let name = dictionary[Attributes.name.rawValue] as? String else {
      fatalError("Unable to deserialize `Country.name`")
    }

    self.name = name
    self.capital = dictionary[Attributes.capitalCity.rawValue] as? String
  }
}
