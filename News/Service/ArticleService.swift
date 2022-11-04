protocol ArticleService {
    typealias AriclesCompletion = ([Article]?) -> Void

    var tag: String { get }

    func getArticles(completion: @escaping AriclesCompletion)
}
