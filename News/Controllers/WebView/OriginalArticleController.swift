import UIKit
import WebKit

final class OriginalArticleController: UIViewController {
    var articleTitle: String?
    var baseUrl: URL?

    @IBOutlet private var articleWebView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let articleTitle = self.articleTitle, let baseUrl = self.baseUrl
            else { return }
        self.navigationItem.title = articleTitle
        let request = URLRequest(url: baseUrl)
        self.articleWebView.load(request)
    }
}
