//
//  ExchangeRate.swift
//  CalculatorX
//
//  Created by HauNguyen on 05/10/2565 BE.
//

import Foundation

public class ExchangeRateAdaptor : BaseAdaptor {
        
    public func getCurrencies() {
        let urlString = Config.apiUrl + "Currencies"
        ExchangeRateAdaptor.callAPI(urlString: urlString, method: .GET, type: BaseAdaptorType.GetList as AnyObject)
    }
    
}