import WebKit

public class ScoutUIView : UIView, UIScrollViewDelegate, WKUIDelegate {
  private var webView: WKWebView?

  let BASE_URL = "https://www.scoutsdk.com"

  class func getUIFrame() -> CGRect {
    let uiHeightPct: Float = 0.80
    let uiWidthPct: Float = 0.80

    let screenBounds: CGRect = UIScreen.main.bounds

    let uiHeight = Float(screenBounds.size.height * CGFloat(uiHeightPct))
    let uiWidth = Float(screenBounds.size.width * CGFloat(uiWidthPct))
    let uiOriginX = Float(screenBounds.size.width * CGFloat((1 - uiWidthPct)) / 2)
    let uiOriginY = Float(screenBounds.size.height * CGFloat((1 - uiHeightPct)) / 2)

    return CGRect(x: CGFloat(uiOriginX), y: CGFloat(uiOriginY), width: CGFloat(uiWidth), height: CGFloat(uiHeight))
  }

  convenience init(page: String) {
    let screenBounds: CGRect = UIScreen.main.bounds

    self.init(frame: screenBounds)

    isHidden = true
    alpha = 0.0
    backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)

    let singleFingerTap = UITapGestureRecognizer(target: self, action: #selector(self.handleSingleTap(recognizer:)))
    addGestureRecognizer(singleFingerTap)

    webView = WKWebView(frame: ScoutUIView.getUIFrame())
    webView?.alpha = 0.0
    webView?.scrollView.delegate = self
    webView?.layer.cornerRadius = 5
    webView?.layer.masksToBounds = true
    webView?.isOpaque = false
    webView?.backgroundColor = UIColor.clear
    webView?.scrollView.backgroundColor = UIColor.clear
    webView?.scrollView.bounces = false
    webView?.scrollView.isScrollEnabled = false

    let pageUrl = NSString.path(withComponents: [BASE_URL, page])
    let request = NSURLRequest.init(url: URL.init(string: pageUrl)!)
  }

  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return nil
  }

  @objc func handleSingleTap(recognizer: UITapGestureRecognizer) {
    let location: CGPoint = recognizer.location(in: recognizer.view?.superview)
    close()
  }

  func open() {
    isHidden = false
    webView?.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
    UIView.animate(withDuration: 0.2, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.0, options: .curveLinear, animations: {
      self.alpha = 1.0
      self.webView?.alpha = 1.0
      self.webView?.transform = CGAffineTransform(scaleX: 1, y: 1)
    })
  }

  func close() {
    webView?.endEditing(true)
    UIView.animate(withDuration: 0.2, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.0, options: .curveLinear, animations: {
      self.alpha = 0.0
      self.webView?.alpha = 0.0
      self.webView?.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
    }) { finished in
      self.isHidden = true
    }
  }
}
