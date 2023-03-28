//
//  MarketDataModel.swift
//  CryptoTracker
//
//  Created by Sergey Agmalin on 2022-07-26.
//

import Foundation

// JSON Data:
/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 
 {
 "data": {
 "active_cryptocurrencies": 13130,
 "upcoming_icos": 0,
 "ongoing_icos": 49,
 "ended_icos": 3376,
 "markets": 532,
 "total_market_cap": {
 "btc": 47750430.1425142,
 "eth": 724170167.7609499,
 "ltc": 19008154013.541473,
 "bch": 8599789985.013107,
 "bnb": 4125782435.651398,
 "eos": 924437440744.917,
 "xrp": 3039143505449.461,
 "xlm": 9659075763487.621,
 "link": 160942433494.8417,
 "dot": 151490083651.80502,
 "yfi": 153752147.6682783,
 "usd": 991336947408.8896,
 "aed": 3641210347941.278,
 "ars": 129492756282313.81,
 "aud": 1429326463502.2466,
 "bdt": 93884931407692.84,
 "bhd": 373723124466.7304,
 "bmd": 991336947408.8896,
 "brl": 5319216658711.873,
 "cad": 1278399378607.0308,
 "chf": 954859713092.0316,
 "clp": 914557900832071.5,
 "cny": 6704610042715.83,
 "czk": 24104061466499.92,
 "dkk": 7295747238466.578,
 "eur": 980087255729.6932,
 "gbp": 824198529412.7007,
 "hkd": 7781479541947.139,
 "huf": 392498714152777.7,
 "idr": 14860487809590874,
 "ils": 3416003376913.6655,
 "inr": 79140096931734.39,
 "jpy": 135466813449017.31,
 "krw": 1300109471383939,
 "kwd": 304589268428.32916,
 "lkr": 351883047589277.75,
 "mmk": 1835296935240446,
 "mxn": 20280870403785.86,
 "myr": 4417397437654.02,
 "ngn": 411652667411542.25,
 "nok": 9822829679345.111,
 "nzd": 1590539660563.7734,
 "php": 54989957132581.71,
 "pkr": 230837157199348.62,
 "pln": 4669435934500.205,
 "rub": 59975887300911.76,
 "sar": 3724701736989.0034,
 "sek": 10241405843997.367,
 "sgd": 1377968270267.8337,
 "thb": 36392309454583.87,
 "try": 17710136423102.027,
 "twd": 29700753336791.56,
 "uah": 36478012516361.28,
 "vef": 99262568544.05222,
 "vnd": 23170198923245068,
 "zar": 16812777226970.564,
 "xdr": 728309480500.6779,
 "xag": 53332093797.24558,
 "xau": 577285244.5846183,
 "bits": 47750430142514.195,
 "sats": 4775043014251420
 },
 "total_volume": {
 "btc": 5328218.467887159,
 "eth": 80806326.77529368,
 "ltc": 2121019579.365457,
 "bch": 959605173.8453562,
 "bnb": 460374285.68731993,
 "eos": 103153094736.16525,
 "xrp": 339121982858.90704,
 "xlm": 1077805282845.2738,
 "link": 17958716682.85593,
 "dot": 16903978854.352959,
 "yfi": 17156390.638543043,
 "usd": 110618057582.27275,
 "aed": 406303444041.41565,
 "ars": 14449413197363.645,
 "aud": 159490995929.10013,
 "bdt": 10476123961392.428,
 "bhd": 41701790909.88348,
 "bmd": 110618057582.27275,
 "brl": 593543311569.2001,
 "cad": 142649839134.42923,
 "chf": 106547755535.47537,
 "clp": 102050689022525.77,
 "cny": 748132047040.43,
 "czk": 2689644995313.7495,
 "dkk": 814093926630.9104,
 "eur": 109362763864.82907,
 "gbp": 91967963691.9594,
 "hkd": 868294230630.899,
 "huf": 43796859863442.46,
 "idr": 1658203399478425,
 "ils": 381173786810.1631,
 "inr": 8830825706983.771,
 "jpy": 15116026704903.604,
 "krw": 145072353799286.12,
 "kwd": 33987508810.210926,
 "lkr": 39264772005316.36,
 "mmk": 204791098116167.94,
 "mxn": 2263035283823.9,
 "myr": 492914064586.6081,
 "ngn": 45934148411038.84,
 "nok": 1096077718005.6826,
 "nzd": 177479925689.2443,
 "php": 6136039073735.513,
 "pkr": 25757899989450.863,
 "pln": 521037710164.38293,
 "rub": 6692392704963.621,
 "sar": 415619807469.0524,
 "sek": 1142784422930.8772,
 "sgd": 153760206219.93527,
 "thb": 4060825729658.4116,
 "try": 1976180647519.6028,
 "twd": 3314150301200.23,
 "uah": 4070388881972.5166,
 "vef": 11076186105.71298,
 "vnd": 2585440203135167.5,
 "zar": 1876049071178.0732,
 "xdr": 81268210836.19856,
 "xag": 5951046854.519749,
 "xau": 64416213.47188484,
 "bits": 5328218467887.159,
 "sats": 532821846788715.94
 },
 "market_cap_percentage": {
 "btc": 40.00806891787743,
 "eth": 16.60435178738071,
 "usdt": 6.632756253976785,
 "usdc": 5.547115245875483,
 "bnb": 3.960731164202927,
 "busd": 1.7976692509941088,
 "xrp": 1.587772961045703,
 "ada": 1.546200740845306,
 "sol": 1.2264764908738364,
 "doge": 0.8081530698767522
 },
 "market_cap_change_percentage_24h_usd": -5.611373038782331,
 "updated_at": 1658851029
 }
 }
 
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        /* Longer Version
//        if let item = totalMarketCap.first(where: { (key, value) -> Bool in
//            return key == "usd"
//        }) {
//            return "\(item.value)"
//        }
        */
       
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}
