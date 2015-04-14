//
//  Copyright (c) 2015 Itty Bitty Apps. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController {
  private let collection = CollectableCollection<Country>(resourceFilename: "CountriesCapitals")
}

// MARK: UIPickerViewDataSource

extension PickerViewController: UIPickerViewDataSource {
  internal func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
    return 1
  }
  
  internal func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return self.collection[component].countOfRows
  }
}

// MARK: UIPickerViewDelegate

extension PickerViewController: UIPickerViewDelegate {
  internal func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
    return self.collection.groups.first![row].name
  }
}
