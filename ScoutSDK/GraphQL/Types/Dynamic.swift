import Foundation
import Apollo

public class Dynamic : JSONDecodable, JSONEncodable {

  var _jsonValue: Any

  public required init(jsonValue value: JSONValue) throws {
    _jsonValue = value
  }

  public var jsonValue: JSONValue {
    return _jsonValue
  }
  
  public var value: Any {
    return _jsonValue
  }
}
//
//public class Dynamic : JSONDecodable, JSONEncodable {
//  public init(jsonValue value: JSONValue) throws {
//    guard let obj = value as? NSObject else {
//      throw JSONDecodingError.couldNotConvert(value: value, to: NSObject.self)
//    }
//
//    self = obj.description
//  }
//
//  public var jsonValue: JSONValue {
//    return String(self)
//  }
//}
//
//extension Dynamic : _ObjectiveCBridgeable {
//
//  typealias _ObjectiveCType = ODynamic
//
//  static func _isBridgedToObjectiveC() -> Bool {
//    return type
//  }
//
//  static func _getObjectiveCType() -> Any.Type {
//    return ObjectiveCType.self
//  }
//
//  func _bridgeToObjectiveC() -> _ObjectiveCType {
//    return OPerson(name: name, surname: surname)
//  }
//
//  static func _forceBridgeFromObjectiveC(source: _ObjectiveCType, inout result: Person?) {
//    result = Person(name: source.name, surname: source.name)
//  }
//
//  static func _conditionallyBridgeFRomObjectiveC(source: _ObjectiveCType, inout result: Person?) -> Bool {
//    _forceBridgeFromObjectiveC(source, result: &result)
//    return true
//  }
//}
//
