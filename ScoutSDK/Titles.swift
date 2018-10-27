import Apollo

public class Titles : NSObject {

  var apollo: ApolloClient? = nil

  public func get(identifier: String, callback: @escaping (_: Error?, _: TitleQuery.Data.Title?) -> ()) {
    apollo!.fetch(query: TitleQuery(identifier: identifier)) { (result, error) in
      callback(error, result?.data?.title)
    }
  }
  
  public func list(callback: @escaping (_: Error?, _: [TitlesQuery.Data.Title?]?) -> ()) {
    apollo!.fetch(query: TitlesQuery()) { (result, error) in
      callback(error, result?.data?.titles)
    }
  }
}
