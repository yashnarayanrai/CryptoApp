//
//  CoinModel.swift
//  CryptoApp
//
//  Created by Anand Narayan Rai on 15/02/26.
//

import Foundation


// CoinGecko API Info
/*
 
 URL = https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h
 
 {"id":"bitcoin","symbol":"btc","name":"Bitcoin","image":"https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400","current_price":67291,"market_cap":1344758503096,"market_cap_rank":1,"fully_diluted_valuation":1344764624580,"total_volume":35362913158,"high_24h":69088,"low_24h":66725,"price_change_24h":-222.07487259236223,"price_change_percentage_24h":-0.32893,"market_cap_change_24h":-6677135968.403076,"market_cap_change_percentage_24h":-0.49408,"circulating_supply":19990746.0,"total_supply":19990837.0,"max_supply":21000000.0,"ath":126080,"ath_change_percentage":-46.628,"ath_date":"2025-10-06T18:57:42.558Z","atl":67.81,"atl_change_percentage":99136.61629,"atl_date":"2013-07-06T00:00:00.000Z","roi":null,"last_updated":"2026-02-17T15:56:31.631Z","sparkline_in_7d":{"price":[68543.23050244208,68958.60997610839,68400.9302576248,69246.28467257677,69539.89537574978,69855.81229514664,68892.14110177293,69014.0978254628,68756.11136655635,68636.08258362056,68661.02296853696,68787.11157131186,69163.88217016484,68946.97762062182,68644.96060706391,68175.45041937327,67551.3977776452,67393.1338876921,66764.58898080258,67017.05721590634,66970.62905077402,66807.6119388558,66494.98120901024,67014.71498124763,67091.50719892021,67437.24255140442,66520.47043126007,66493.85891764812,66001.27448137071,66499.01615547431,67229.70574812587,67537.2135009556,67486.51819881125,67779.27675800232,67390.92632777932,66993.76514615967,67451.07122442544,67649.64782221185,67387.85725544306,67524.26768392987,66986.30434164265,67078.87774531855,67053.22272636107,67178.4581077123,67025.73999197627,67505.20239437708,67918.8668330455,68104.64609334413,67821.82074131482,68308.5139267418,67619.70970025606,67107.39876003392,65788.29080024328,65411.62913430127,65536.35172344626,65787.26041698357,65373.153465460666,65760.26221328336,66246.03819951249,66192.37908688825,65907.85178274351,66354.20379582758,66660.74922526913,66460.80346947702,66287.2478700668,66145.26647622047,66319.79278508217,66168.09118045383,66633.60165762658,66895.3374846119,66928.08718593771,67126.01455622054,67051.53066547718,67252.78657169837,67680.10358293349,68601.35608327099,69105.3880728048,69016.92320744746,69097.83747759652,68928.36804915236,68733.84411753804,68842.4853080273,68930.85615649213,68848.91601457071,69052.11814104643,68925.81413527165,68850.55795334087,68946.54151316333,68759.15934178799,68742.18544956709,68897.33349196923,69189.82934923672,69726.25267790715,69691.52126791891,69635.27468433385,70434.28463415819,69633.0263652205,69416.53585336605,69702.71797144218,69761.73770486697,69709.11375885298,69687.28327880825,69733.54122326875,69825.50119312223,69990.8175307309,69884.50659515375,69924.91653176714,69774.2353259966,69729.48913093255,69674.4394979836,69463.07617718862,69961.3128035441,70155.37241359024,70243.08860355157,70373.12694780517,70786.26660662086,70411.32054067256,70376.88960841866,70404.94823152284,70267.17175907342,69387.60144625134,68940.40544020956,69110.93706350432,69060.54773085675,69004.9733197395,68580.5740698471,68391.51912497477,68282.55660712713,68418.56410917995,68837.65412375923,68923.26011623367,68781.29710864896,68807.54988540319,68600.88251203044,68299.08789823233,68378.05073894249,68833.3771011827,68368.57404069978,68411.1284780013,68543.04733752139,68726.37761691494,68939.5890405427,68766.4623978235,68817.00684590373,69720.91528212125,68361.14702019827,68381.76268962049,67513.43201399366,67830.48266944081,67923.40204674947,67845.65549273694,67881.7978501668,68479.96365635042,68804.97684090007,68589.22180875255,68852.48637282102,68856.54508076754,68587.90136643896,68815.02905097854,68465.88015024242,68419.78749680043,68196.19133548804,68358.38868471434,68358.54885195654,68142.87710761404,68079.29361360389,67784.02666527066,67833.14545257023]},"price_change_percentage_24h_in_currency":-0.32893435567952206}
 */

// bitcoin

struct CoinModel: Identifiable, Codable{
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume: Double?
    let high24H, low24H, priceChange24H, priceChangePercentage24H: Double?
    let marketCapChange24H, marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply: Double?
    let maxSupply: Double?
    let ath, athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let priceChangePercentage24HInCurrency: Double?
    let sparklineIn7D: SparklineIn7D?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case sparklineIn7D = "sparkline_in_7d" 
        case currentHoldings
    }
    
    func updateHoldings(amount: Double) -> CoinModel{
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency,sparklineIn7D: sparklineIn7D, currentHoldings: currentHoldings)
    }
    
    var currentHoldingValue: Double{
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int{
        return Int(marketCapRank ?? 0)
    }
    
}

struct SparklineIn7D: Codable{
    let price: [Double]?
}

