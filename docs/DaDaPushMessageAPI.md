# DaDaPushMessageAPI

All URIs are relative to *https://www.dadapush.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMessage**](DaDaPushMessageAPI.md#createmessage) | **POST** /api/v1/message | push Message to a Channel
[**deleteMessage**](DaDaPushMessageAPI.md#deletemessage) | **DELETE** /api/v1/message/{messageId} | delete a Channel Message
[**getMessage**](DaDaPushMessageAPI.md#getmessage) | **GET** /api/v1/message/{messageId} | get a Channel Message
[**getMessages**](DaDaPushMessageAPI.md#getmessages) | **GET** /api/v1/messages | get Message List


# **createMessage**
```swift
    open class func createMessage(body: MessagePushRequest, channelToken: String, completion: @escaping (_ data: ResultOfMessagePushResponse?, _ error: Error?) -> Void)
```

push Message to a Channel

<h2>Rate Limit:</h2><ul><li>1 request per 1s</li><li>30 request per 1m</li><li>500 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DaDaPushClient

let body = MessagePushRequest(actions: [Action(name: "name_example", type: "type_example", url: "url_example")], content: "content_example", needPush: false, title: "title_example") // MessagePushRequest | body
let channelToken = "channelToken_example" // String | see: https://www.dadapush.com/channel/list 

// push Message to a Channel
DaDaPushMessageAPI.createMessage(body: body, channelToken: channelToken) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MessagePushRequest**](MessagePushRequest.md) | body | 
 **channelToken** | **String** | see: https://www.dadapush.com/channel/list | [optional] 

### Return type

[**ResultOfMessagePushResponse**](ResultOfMessagePushResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMessage**
```swift
    open class func deleteMessage(messageId: Int64, channelToken: String, completion: @escaping (_ data: Result?, _ error: Error?) -> Void)
```

delete a Channel Message

<h2>Rate Limit:</h2><ul><li>10 request per 1s</li><li>100 request per 1m</li><li>1000 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DaDaPushClient

let messageId = 987 // Int64 | messageId
let channelToken = "channelToken_example" // String | see: https://www.dadapush.com/channel/list 

// delete a Channel Message
DaDaPushMessageAPI.deleteMessage(messageId: messageId, channelToken: channelToken) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **Int64** | messageId | 
 **channelToken** | **String** | see: https://www.dadapush.com/channel/list | [optional] 

### Return type

[**Result**](Result.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessage**
```swift
    open class func getMessage(messageId: Int64, channelToken: String, completion: @escaping (_ data: ResultOfMessageObject?, _ error: Error?) -> Void)
```

get a Channel Message

<h2>Rate Limit:</h2><ul><li>10 request per 1s</li><li>100 request per 1m</li><li>1000 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DaDaPushClient

let messageId = 987 // Int64 | messageId
let channelToken = "channelToken_example" // String | see: https://www.dadapush.com/channel/list 

// get a Channel Message
DaDaPushMessageAPI.getMessage(messageId: messageId, channelToken: channelToken) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **Int64** | messageId | 
 **channelToken** | **String** | see: https://www.dadapush.com/channel/list | [optional] 

### Return type

[**ResultOfMessageObject**](ResultOfMessageObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessages**
```swift
    open class func getMessages(page: Int, pageSize: Int, channelToken: String, completion: @escaping (_ data: ResultOfPageResponseOfMessageObject?, _ error: Error?) -> Void)
```

get Message List

<h2>Rate Limit:</h2><ul><li>1 request per 1s</li><li>45 request per 1m</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DaDaPushClient

let page = 987 // Int | greater than 1 (default to 1)
let pageSize = 987 // Int | range is 1,50 (default to 10)
let channelToken = "channelToken_example" // String | see: https://www.dadapush.com/channel/list 

// get Message List
DaDaPushMessageAPI.getMessages(page: page, pageSize: pageSize, channelToken: channelToken) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** | greater than 1 | [default to 1]
 **pageSize** | **Int** | range is 1,50 | [default to 10]
 **channelToken** | **String** | see: https://www.dadapush.com/channel/list | [optional] 

### Return type

[**ResultOfPageResponseOfMessageObject**](ResultOfPageResponseOfMessageObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

