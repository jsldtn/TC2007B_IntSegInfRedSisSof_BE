//
// ApiAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class ApiAPI {
    /**
     * enum for parameter format
     */
    public enum Format_apiSchemaRetrieve: String { 
        case json = "json"
        case yaml = "yaml"
    }

    /**
     * enum for parameter lang
     */
    public enum Lang_apiSchemaRetrieve: String { 
        case af = "af"
        case ar = "ar"
        case arDz = "ar-dz"
        case ast = "ast"
        case az = "az"
        case be = "be"
        case bg = "bg"
        case bn = "bn"
        case br = "br"
        case bs = "bs"
        case ca = "ca"
        case ckb = "ckb"
        case cs = "cs"
        case cy = "cy"
        case da = "da"
        case de = "de"
        case dsb = "dsb"
        case el = "el"
        case en = "en"
        case enAu = "en-au"
        case enGb = "en-gb"
        case eo = "eo"
        case es = "es"
        case esAr = "es-ar"
        case esCo = "es-co"
        case esMx = "es-mx"
        case esNi = "es-ni"
        case esVe = "es-ve"
        case et = "et"
        case eu = "eu"
        case fa = "fa"
        case fi = "fi"
        case fr = "fr"
        case fy = "fy"
        case ga = "ga"
        case gd = "gd"
        case gl = "gl"
        case he = "he"
        case hi = "hi"
        case hr = "hr"
        case hsb = "hsb"
        case hu = "hu"
        case hy = "hy"
        case ia = "ia"
        case _id = "id"
        case ig = "ig"
        case io = "io"
        case _is = "is"
        case it = "it"
        case ja = "ja"
        case ka = "ka"
        case kab = "kab"
        case kk = "kk"
        case km = "km"
        case kn = "kn"
        case ko = "ko"
        case ky = "ky"
        case lb = "lb"
        case lt = "lt"
        case lv = "lv"
        case mk = "mk"
        case ml = "ml"
        case mn = "mn"
        case mr = "mr"
        case ms = "ms"
        case my = "my"
        case nb = "nb"
        case ne = "ne"
        case nl = "nl"
        case nn = "nn"
        case os = "os"
        case pa = "pa"
        case pl = "pl"
        case pt = "pt"
        case ptBr = "pt-br"
        case ro = "ro"
        case ru = "ru"
        case sk = "sk"
        case sl = "sl"
        case sq = "sq"
        case sr = "sr"
        case srLatn = "sr-latn"
        case sv = "sv"
        case sw = "sw"
        case ta = "ta"
        case te = "te"
        case tg = "tg"
        case th = "th"
        case tk = "tk"
        case tr = "tr"
        case tt = "tt"
        case udm = "udm"
        case uk = "uk"
        case ur = "ur"
        case uz = "uz"
        case vi = "vi"
        case zhHans = "zh-hans"
        case zhHant = "zh-hant"
    }

    /**

     - parameter format: (query)  (optional)
     - parameter lang: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiSchemaRetrieve(format: Format_apiSchemaRetrieve? = nil, lang: Lang_apiSchemaRetrieve? = nil, completion: @escaping ((_ data: [String:Any]?,_ error: Error?) -> Void)) {
        apiSchemaRetrieveWithRequestBuilder(format: format, lang: lang).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /api/schema/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "key" : ""
}}]
     - parameter format: (query)  (optional)
     - parameter lang: (query)  (optional)

     - returns: RequestBuilder<[String:Any]> 
     */
    open class func apiSchemaRetrieveWithRequestBuilder(format: Format_apiSchemaRetrieve? = nil, lang: Lang_apiSchemaRetrieve? = nil) -> RequestBuilder<[String:Any]> {
        let path = "/api/schema/"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "format": format?.rawValue, 
                        "lang": lang?.rawValue
        ])


        let requestBuilder: RequestBuilder<[String:Any]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
