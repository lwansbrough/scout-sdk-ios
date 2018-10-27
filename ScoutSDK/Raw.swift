import Apollo

public class Raw : NSObject {

  var apollo: ApolloClient? = nil

  public func query(title: String?, method: String?, parameters: [Dynamic?]? = [], callback: @escaping (_: Error?, _: RawData?) -> ()) {
    apollo!.fetch(query: RawQuery(title: title, method: method, parameters: parameters)) { (result, error) in
      callback(error, result?.data?.raw)
    }
  }
}
