//
//  Cookie.h
//  CookieBarObj-C
//
//  Created by Mac on 11/27/17.
//  Copyright © 2017 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Cookie : NSObject

@property (strong, nonatomic) NSNumber *identifier;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSNumber *price;
@property (strong, nonatomic) NSString *imageURL;
@property (strong, nonatomic) NSString *dateCreated;

- (id)initCookie:(NSNumber*)identifier name:(NSString*)name price:(NSNumber*)price url:(NSString*)url date:(NSString*)date;

@end
