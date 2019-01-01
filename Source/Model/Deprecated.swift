//
//  Deprecated.swift
//  QuickTableViewController
//
//  Created by bcylin on 01/01/2019.
//  Copyright © 2019 bcylin.
//
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation

public extension Row {

  public var title: String {
    return text
  }

  public var subtitle: Subtitle? {
    return detailText?.subtitle
  }

}

////////////////////////////////////////////////////////////////////////////////

public extension NavigationRow {

  public convenience init(
    title: String,
    subtitle: Subtitle,
    icon: Icon? = nil,
    customization: ((UITableViewCell, Row & RowStyle) -> Void)? = nil,
    action: ((Row) -> Void)? = nil
  ) {
    self.init(
      text: title,
      detailText: subtitle.detailText,
      icon: icon,
      customization: customization,
      action: action
    )
  }

}

////////////////////////////////////////////////////////////////////////////////

public extension OptionRow {

  public convenience init(
    title: String,
    subtitle: Subtitle? = nil,
    isSelected: Bool,
    icon: Icon? = nil,
    customization: ((UITableViewCell, Row & RowStyle) -> Void)? = nil,
    action: ((Row) -> Void)?
  ) {
    self.init(
      text: title,
      detailText: subtitle?.detailText,
      isSelected: isSelected,
      icon: icon,
      customization: customization,
      action: action
    )
  }

}

////////////////////////////////////////////////////////////////////////////////

public extension SwitchRow {

  public convenience init(
    title: String,
    subtitle: Subtitle? = nil,
    switchValue: Bool,
    icon: Icon? = nil,
    customization: ((UITableViewCell, Row & RowStyle) -> Void)? = nil,
    action: ((Row) -> Void)?
  ) {
    self.init(
      text: title,
      detailText: subtitle?.detailText,
      switchValue: switchValue,
      icon: icon,
      customization: customization,
      action: action
    )
  }

}

////////////////////////////////////////////////////////////////////////////////

public extension TapActionRow {

  public convenience init(
    title: String,
    customization: ((UITableViewCell, Row & RowStyle) -> Void)? = nil,
    action: ((Row) -> Void)?
  ) {
    self.init(
      text: title,
      customization: customization,
      action: action
    )
  }

}
