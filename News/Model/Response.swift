import Foundation

struct Response<T: Decodable> {
    let articles: [Article]
}

extension Response: Decodable {}
