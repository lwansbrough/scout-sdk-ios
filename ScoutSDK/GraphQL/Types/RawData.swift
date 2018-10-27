import Foundation
import Apollo

public class RawData : JSONDecodable, JSONEncodable {

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
