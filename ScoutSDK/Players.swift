import Apollo

public class Players : NSObject {

  var apollo: ApolloClient? = nil

  public func get(title: String?, identifier: String?, segment: String? = nil, callback: @escaping (_: Error?, _: PlayerQuery.Data.Player?) -> ()) {
    apollo!.fetch(query: PlayerQuery(title: title, identifier: identifier, segment: segment)) { (result, error) in
      callback(error, result?.data?.player)
    }
  }

  public func subscribe(title: String?, identifier: String?, segment: String? = nil, callback: @escaping (_: Error?, _: PlayerUpdateSubscription.Data.Player?) -> ()) {
    apollo!.subscribe(subscription: PlayerUpdateSubscription(title: title, identifier: identifier, segment: segment)) { (result, error) in
      callback(error, result?.data?.player)
    }
  }

  public func search(identifier: String? = nil, platform: String? = nil, console: String? = nil, title: String? = nil, comprehensive: Bool = true, exact: Bool = true, callback: @escaping (_: Error?, _: [SearchQuery.Data.Player.Result?]?) -> ()) {

    apollo!.fetch(query: SearchQuery(platform: platform, console: console, title: title, identifier: identifier, comprehensive: comprehensive, exact: exact)) { (result, error) in
      callback(error, result?.data?.players?.results)
    }
  }
}
