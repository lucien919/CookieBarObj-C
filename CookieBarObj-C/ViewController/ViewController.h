//
//  ViewController.h
//  CookieBarObj-C
//
//  Created by Mac on 11/27/17.
//  Copyright © 2017 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "CookieManager.h"
#import "AppDelegate.h"

@interface ViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collection;
//@property (strong, nonatomic) CookieManager *cManager;
@property (strong, nonatomic) NSArray *cookieArray;
@property (strong, nonatomic) NSArray *imageArray;
@property (strong, nonatomic) NSManagedObjectContext *managedContext;

-(void) getCookies;
-(void) getImages;
-(void) saveToCoreData;

@end

