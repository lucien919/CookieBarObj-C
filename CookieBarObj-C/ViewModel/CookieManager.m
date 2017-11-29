////
////  CookieManager.m
////  CookieBarObj-C
////
////  Created by Mac on 11/28/17.
////  Copyright © 2017 Mac. All rights reserved.
////
//
//#import "CookieManager.h"
//#import "Cookie.h"
//
////static NSString *cookiesURL = NULL;
////static NSArray *arr;
//
//@implementation CookieManager
//
//-(id)initCookieManager:(void (^)(void))completion{
//    if(self = [super init]){
//        _apiURL = @"https://m1xdev.coinscloud.com:49994/cookies.json";
//        [self getCookiesAsync:^{
//            completion();
//        }];
//    }
//    return self;
//}
//
//-(Cookie*)getCookieAtIndex:(int)index{
//    return _cookieArray[index];
//}
//
//-(NSArray *)getCookieArray{
//    return _cookieArray;
//}
//
//-(int)getCount{
//    return (int)_cookieArray.count;
//}
//
//-(void)getCookiesAsync:(void (^)(void))completion{
//
//    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
//
//    NSURL *url = [NSURL URLWithString:_apiURL];
//
//    [[session dataTaskWithURL:url completionHandler:^
//      (NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//
//          //NSData *data = [[NSData alloc] initWithContentsOfURL:url];
//
//          NSArray *cookies = [self getCookies:data];
//          _cookieArray = cookies;
//          //dispatch_async(dispatch_get_main_queue(), ^{
//              completion();
//          //});
//
//
//      }] resume];
//}
//
//-(NSArray*) getCookies:(NSData *)data {
//
//    NSDictionary *results = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
//
//    NSArray *cookies = [results objectForKey:@"cookies"];
//    NSMutableArray *finalCookies = [NSMutableArray new];
//    for(int i=0;i<cookies.count;++i){
//        int identification = [[cookies[i] objectForKey:@"id"] intValue];
//        NSString *name = [cookies[i] objectForKey:@"name"];
//        //NSLog(name);
//        double price = [[cookies[i] objectForKey:@"price"] doubleValue];
//        NSString *imageURL = [cookies[i] objectForKey:@"imageURL"];
//        NSString *date = [cookies[i] objectForKey:@"addedOn"];
//
//        Cookie *cookie = [[Cookie alloc] initCookie:identification name:name price:price url:imageURL date:date];
//
//        [finalCookies addObject:cookie];
//    }
//    return finalCookies;
//}
//
//@end

