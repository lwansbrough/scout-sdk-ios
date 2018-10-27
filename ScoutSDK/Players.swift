import Apollo

public class Players : NSObject {

  var apollo: ApolloClient

  init(withApollo: ApolloClient) {
    apollo = withApollo
  }

  public func get(title: String?, identifier: String?, segment: String?, callback: @escaping (_: Error?, _: PlayerQuery.Data.Player?) -> ()) {
    apollo.fetch(query: PlayerQuery(title: title, identifier: identifier, segment: segment)) { (result, error) in
      callback(error, result?.data?.player)
    }
  }
  
  public func search(platform: String?, console: String?, title: String?, identifier: String?, comprehensive: Bool?, exact: Bool?, callback: @escaping (_: Error?, _: [SearchQuery.Data.Player.Result?]?) -> ()) {
    
    apollo.fetch(query: SearchQuery(platform: platform, console: console, title: title, identifier: identifier, comprehensive: comprehensive, exact: exact)) { (result, error) in
      callback(error, result?.data?.players?.results)
    }
  }
}
