import Foundation
import AppAuth
import Apollo
import AdSupport

public class ScoutSDK : NSObject {

  let ISSUER_URL = "https://www.scoutsdk.com"
  let GRAPH_URL = "https://api.scoutsdk.com/graph"

  var config: ScoutConfiguration? = nil
  var apollo: ApolloClient? = nil
  public var players: Players? = nil

  private func createApollo(clientId: String, authorizationToken: String?) -> ApolloClient {
    let configuration = URLSessionConfiguration.default
    configuration.httpAdditionalHeaders = [
      "Scout-App": clientId,
      "Scout-Device": getDeviceId()
    ]

    if (authorizationToken != nil) {
      configuration.httpAdditionalHeaders?.updateValue("Bearer \(authorizationToken)", forKey: "Authorization")
    }

    let graphqlEndpoint = URL(string: GRAPH_URL)!
    return ApolloClient(networkTransport: HTTPNetworkTransport(url: graphqlEndpoint, configuration: configuration))
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
    players = Players(withApollo: apollo!)
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
