//
//  Cookie.m
//  CookieBarObj-C
//
//  Created by Mac on 11/27/17.
//  Copyright © 2017 Mac. All rights reserved.
//

#import "Cookie.h"

@implementation Cookie

- (id)initCookie:(NSNumber*)identifier name:(NSString*)name price:(NSNumber*)price url:(NSString*)url date:(NSString*)date{
    if(self = [super init]){
        
        _identifier = identifier;
        _name = name;
        _price = price;
        _imageURL = url;
        _dateCreated = date;
    }
    return self;
}

@end
