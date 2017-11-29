//
//  CookieCellCollectionViewCell.m
//  CookieBarObj-C
//
//  Created by Mac on 11/27/17.
//  Copyright © 2017 Mac. All rights reserved.
//

#import "CookieCellCollectionViewCell.h"

@implementation CookieCellCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.cookieImage.layer.cornerRadius = self.cookieImage.frame.size.height/2;
    self.cookieImage.layer.masksToBounds = YES;
    self.cookieImage.layer.borderWidth = 0;
    // Initialization code
}

@end
