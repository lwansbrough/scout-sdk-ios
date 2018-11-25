import Foundation
import AppAuth
import Apollo
import AdSupport

public class ScoutSDK : NSObject {

  let ISSUER_URL = "https://www.scoutsdk.com"
  let GRAPH_HTTP_URL = "https://api.scoutsdk.com/graph"
  let GRAPH_WS_URL = "wss://api.scoutsdk.com/graph"

  var config: ScoutConfiguration? = nil
  var apollo: ApolloClient? = nil
  var apolloWS: ApolloClient? = nil
  public private(set) var personas: Personas = Personas()
  public private(set) var players: Players = Players()
  public private(set) var raw: Raw = Raw()
  public private(set) var titles: Titles = Titles()
  public private(set) var users: Users = Users()

  private func createApollo(clientId: String, authorizationToken: String?) -> ApolloClient {
    let configuration = URLSessionConfiguration.default
    configuration.httpAdditionalHeaders = [
      "Scout-App": clientId,
      "Scout-Device": getDeviceId()
    ]

    if (authorizationToken != nil) {
      configuration.httpAdditionalHeaders?.updateValue("Bearer \(authorizationToken!)", forKey: "Authorization")
    }
    
    var graphqlWSEndpointComponents = URLComponents(string: GRAPH_WS_URL)!
    graphqlWSEndpointComponents.queryItems = [
      URLQueryItem(name: "app", value: clientId),
      URLQueryItem(name: "device", value: getDeviceId().uuidString),
      URLQueryItem(name: "access_token", value: authorizationToken)
    ]
    
    let graphqlHTTPEndpoint = URL(string: GRAPH_HTTP_URL)!
    let graphqlWSEndpoint = graphqlWSEndpointComponents.url!
    
    let graphqlWSRequest = URLRequest(url: graphqlWSEndpoint)
    
    let splitNetworkTransport = SplitNetworkTransport(httpNetworkTransport: HTTPNetworkTransport(url: graphqlHTTPEndpoint, configuration: configuration), webSocketNetworkTransport: WebSocketTransport(request: graphqlWSRequest))

    return ApolloClient(networkTransport: splitNetworkTransport)
  }
  
  private func getDeviceId() -> UUID {
    if (ASIdentifierManager.shared().isAdvertisingTrackingEnabled) {
      return ASIdentifierManager.shared().advertisingIdentifier
    }
    else {
      return UIDevice.current.identifierForVendor ?? UUID.init()
    }
  }

  public func configure(withConfig: ScoutConfiguration, completed: @escaping (_: Error?) -> ()) {
    self.config = withConfig
    apollo = createApollo(clientId: config!.clientId, authorizationToken: nil)
    players.apollo = apollo
    completed(nil)
//    let issuer = URL(string: ISSUER_URL)
//    OIDAuthorizationService.discoverConfiguration(forIssuer: issuer!) {
//            configuration, error in
//
//      if configuration == nil {
//        self.assignAuthState(nil)
//        return
//      }
//
//      let request = OIDAuthorizationRequest(configuration: configuration!, clientId: config.clientID, scopes: [OIDScopeOpenID, OIDScopeProfile], redirectURL: redirectURI!, responseType: OIDResponseTypeCode, additionalParameters: nil)
//    }
  }
}

extension ScoutSDK : OIDAuthStateChangeDelegate, OIDAuthStateErrorDelegate {
  public func didChange(_ state: OIDAuthState) {

  }

  public func authState(_ state: OIDAuthState, didEncounterAuthorizationError error: Error) {

  }

}
