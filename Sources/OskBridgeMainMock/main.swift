// //////////////////////////////
// FILE: OskBridgeMain/main.swift
// //////////////////////////////
import Foundation
import OskGadgetCWrapMock

/* ***********************
20190824_134827_weight.csv
20190824_134828_weight.csv
20190824_134848_weight.csv
20190824_134849_weight.csv
20190824_134855_weight.csv
20190824_134856_weight.csv
20190824_134902_weight.csv
20190824_134903_weight.csv
 
1566679707
1566679708
1566679728
1566679729
1566679735
1566679736
1566679742
1566679743
*********************** */

let dateListStr = [
    "20190824_134827",
    "20190824_134828",
    "20190824_134848",
    "20190824_134849",
    "20190824_134855",
    "20190824_134856",
    "20190824_134902",
    "20190824_134903"
]

/// - Returns: seconds since 1970.01.01 00:00:00 UTC
func getUnixEpochSeconds(date dateString: String) -> Int64? {
    var formatStr = "yyyyMMdd_HHmmss"
    let dateFormatter = DateFormatter()
    if dateString.suffix(1) == "z" {
        formatStr.append("'z'")
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
    } 
    dateFormatter.dateFormat = formatStr
    if let date = dateFormatter.date(from: dateString) {
        return Int64(date.timeIntervalSince1970)
    }
    else {
        return nil
    }
}

/// - Parameters: 
///     - unixepoch: Unix Epoch seconds
///     - format: `FormatType`. default = `.filename` "yyyyMMdd_HHmmss"
///     - utc: Bool (note default `false` removed)
/// - Returns: formatted UTC date time `String`
func getDateTimeString(unixepoch: Int64, utc: Bool = false) -> String {
    // Note: NSTimeInteral is Double
    let date = Date(timeIntervalSince1970: Double(unixepoch))
    let dateFormatter = DateFormatter()
    var formatStr = "yyyyMMdd_HHmmss"
    if utc {
        formatStr.append("'z'")
    }
    dateFormatter.dateFormat = formatStr        
    if utc {
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
    }
    return dateFormatter.string(from: date)
}

// /////////////////////
// Data Transform Checks
// /////////////////////

for dateStr in dateListStr {
    print(dateStr)
    let seconds = getUnixEpochSeconds(date: dateStr)!
    print(seconds)
    let s = getDateTimeString(unixepoch: seconds)
    print(s)
    if s == dateStr {
        print("PASS")
    }
    else {
        print("FAIL")        
    }
    print("---")
}

// /////////////////////
// OskGadget Checks
// /////////////////////

guard var oskGadget = oskGadgetCreate() else {
    fatalError()
}

print(oskGadgetGetScaleWeight(oskGadget))
print(oskGadgetGetScaleWeight(oskGadget))
print(oskGadgetGetScaleWeight(oskGadget))
print(oskGadgetGetScaleWeight(oskGadget))
print(oskGadgetGetScaleWeight(oskGadget))
print("===")
print(oskGadgetGetLastTimestamp(oskGadget))
print(oskGadgetGetLastTimestamp(oskGadget))
print(oskGadgetGetLastTimestamp(oskGadget))
print(oskGadgetGetLastTimestamp(oskGadget))
print(oskGadgetGetLastTimestamp(oskGadget))
print(oskGadgetGetLastTimestamp(oskGadget))
print(oskGadgetGetLastTimestamp(oskGadget))
print(oskGadgetGetLastTimestamp(oskGadget))
print(oskGadgetGetLastTimestamp(oskGadget))
