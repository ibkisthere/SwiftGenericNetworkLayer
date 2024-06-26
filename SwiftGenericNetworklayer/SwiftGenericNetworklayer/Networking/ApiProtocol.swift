//
//  APIProtocol.swift
//  SwiftGenericNetworklayer
//
//  Created by Ibukunoluwa Akintobi on 06/06/2024.
//

import Foundation
import Combine


protocol ApiProtocol {
    func asyncRequest<T:Decodable>(endpoint: EndpointProvider, responseModel:T.Type) async throws -> T
    func combineRequest<T:Decodable>(endpoint: EndpointProvider, responseModel:T.Type) -> AnyPublisher<T,ApiError>
    func asyncUpload<T:Decodable>(endpoint: EndpointProvider, responseModel:T.Type) async throws -> T
    func asyncDownload(fileURL:URL) async throws -> URL
    func asyncDownload(endpoint:EndpointProvider) async throws -> URL
}
