//
// DaDaPushMessageAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire



open class DaDaPushMessageAPI {
    /**
     push Message to a Channel
     
     - parameter body: (body) body 
     - parameter xChannelToken: (header) see: https://www.dadapush.com/channel/list (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createMessage(body: MessagePushRequest, xChannelToken: String? = nil, completion: @escaping ((_ data: ResultOfMessagePushResponse?,_ error: Error?) -> Void)) {
        createMessageWithRequestBuilder(body: body, xChannelToken: xChannelToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     push Message to a Channel
     - POST /api/v1/message
     - <h2>Rate Limit:</h2><ul><li>1 request per 1s</li><li>30 request per 1m</li><li>500 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>
     - parameter body: (body) body 
     - parameter xChannelToken: (header) see: https://www.dadapush.com/channel/list (optional)
     - returns: RequestBuilder<ResultOfMessagePushResponse> 
     */
    open class func createMessageWithRequestBuilder(body: MessagePushRequest, xChannelToken: String? = nil) -> RequestBuilder<ResultOfMessagePushResponse> {
        let path = "/api/v1/message"
        let URLString = DaDaPushClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "x-channel-token": xChannelToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ResultOfMessagePushResponse>.Type = DaDaPushClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     delete a Channel Message
     
     - parameter messageId: (path) messageId 
     - parameter xChannelToken: (header) see: https://www.dadapush.com/channel/list (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteMessage(messageId: Int64, xChannelToken: String? = nil, completion: @escaping ((_ data: Result?,_ error: Error?) -> Void)) {
        deleteMessageWithRequestBuilder(messageId: messageId, xChannelToken: xChannelToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     delete a Channel Message
     - DELETE /api/v1/message/{messageId}
     - <h2>Rate Limit:</h2><ul><li>10 request per 1s</li><li>100 request per 1m</li><li>1000 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>
     - parameter messageId: (path) messageId 
     - parameter xChannelToken: (header) see: https://www.dadapush.com/channel/list (optional)
     - returns: RequestBuilder<Result> 
     */
    open class func deleteMessageWithRequestBuilder(messageId: Int64, xChannelToken: String? = nil) -> RequestBuilder<Result> {
        var path = "/api/v1/message/{messageId}"
        let messageIdPreEscape = "\(APIHelper.mapValueToPathItem(messageId))"
        let messageIdPostEscape = messageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{messageId}", with: messageIdPostEscape, options: .literal, range: nil)
        let URLString = DaDaPushClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "x-channel-token": xChannelToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Result>.Type = DaDaPushClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     get a Channel Message
     
     - parameter messageId: (path) messageId 
     - parameter xChannelToken: (header) see: https://www.dadapush.com/channel/list (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMessage(messageId: Int64, xChannelToken: String? = nil, completion: @escaping ((_ data: ResultOfMessageObject?,_ error: Error?) -> Void)) {
        getMessageWithRequestBuilder(messageId: messageId, xChannelToken: xChannelToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     get a Channel Message
     - GET /api/v1/message/{messageId}
     - <h2>Rate Limit:</h2><ul><li>10 request per 1s</li><li>100 request per 1m</li><li>1000 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>
     - parameter messageId: (path) messageId 
     - parameter xChannelToken: (header) see: https://www.dadapush.com/channel/list (optional)
     - returns: RequestBuilder<ResultOfMessageObject> 
     */
    open class func getMessageWithRequestBuilder(messageId: Int64, xChannelToken: String? = nil) -> RequestBuilder<ResultOfMessageObject> {
        var path = "/api/v1/message/{messageId}"
        let messageIdPreEscape = "\(APIHelper.mapValueToPathItem(messageId))"
        let messageIdPostEscape = messageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{messageId}", with: messageIdPostEscape, options: .literal, range: nil)
        let URLString = DaDaPushClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "x-channel-token": xChannelToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ResultOfMessageObject>.Type = DaDaPushClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     get Message List
     
     - parameter page: (query) greater than 1 
     - parameter pageSize: (query) range is 1,50 
     - parameter xChannelToken: (header) see: https://www.dadapush.com/channel/list (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMessages(page: Int, pageSize: Int, xChannelToken: String? = nil, completion: @escaping ((_ data: ResultOfPageResponseOfMessageObject?,_ error: Error?) -> Void)) {
        getMessagesWithRequestBuilder(page: page, pageSize: pageSize, xChannelToken: xChannelToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     get Message List
     - GET /api/v1/messages
     - <h2>Rate Limit:</h2><ul><li>1 request per 1s</li><li>45 request per 1m</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>
     - parameter page: (query) greater than 1 
     - parameter pageSize: (query) range is 1,50 
     - parameter xChannelToken: (header) see: https://www.dadapush.com/channel/list (optional)
     - returns: RequestBuilder<ResultOfPageResponseOfMessageObject> 
     */
    open class func getMessagesWithRequestBuilder(page: Int, pageSize: Int, xChannelToken: String? = nil) -> RequestBuilder<ResultOfPageResponseOfMessageObject> {
        let path = "/api/v1/messages"
        let URLString = DaDaPushClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page.encodeToJSON(), 
            "pageSize": pageSize.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-channel-token": xChannelToken
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ResultOfPageResponseOfMessageObject>.Type = DaDaPushClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

}