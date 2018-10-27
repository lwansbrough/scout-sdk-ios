import Apollo

public class Users : NSObject {

  var apollo: ApolloClient? = nil

  public func get(id: String, callback: @escaping (_: Error?, _: UserQuery.Data.User?) -> ()) {
    apollo!.fetch(query: UserQuery(id: id)) { (result, error) in
      callback(error, result?.data?.user)
    }
  }
}
