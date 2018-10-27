import Apollo

public class Personas : NSObject {

  var apollo: ApolloClient? = nil

  public func get(id: String, callback: @escaping (_: Error?, _: PersonaQuery.Data.Persona?) -> ()) {
    apollo!.fetch(query: PersonaQuery(id: id)) { (result, error) in
      callback(error, result?.data?.persona)
    }
  }
}
