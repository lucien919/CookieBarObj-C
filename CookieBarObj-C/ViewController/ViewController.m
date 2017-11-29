//
//  ViewController.m
//  CookieBarObj-C
//
//  Created by Mac on 11/27/17.
//  Copyright © 2017 Mac. All rights reserved.
//

#import "ViewController.h"
#import "CookieCellCollectionViewCell.h"
#import "CookieManager.h"
#import "Cookie.h"
#import "AppDelegate.h"

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collection.delegate = self;
    self.collection.dataSource = self;
    
    [self getCookies];
    [self getImages];
    
    
//    self.cManager = [[CookieManager alloc] initCookieManager:^{
//
//        //cm = self.cManager.copy;
//
//        //NSLog(@"%@", [[_cManager getCookieAtIndex:2] name]);
//        //cookies = [_cManager getCookieArray];
//        self.cManager = cManager;
//        int temp = self.cManager.getCount;
//
//        for (int i=0; i<temp; ++i) {
//            printf("%d\n", i);
//            NSLog(@"%@", [self.cManager getCookieAtIndex:i].name);
//            [cookies addObject:[cManager getCookieAtIndex:i]];
//            //NSLog(@"%@", [[cookies objectAtIndex:i] name]);
//        }
//        for (int i=0; i<cookies.count; ++i) {
//            //NSLog(@"%@", [self.cManager getCookieAtIndex:i].name);
//            //[cookies addObject:[cManager getCookieAtIndex:i]];
//            NSLog(@"%@", [[cookies objectAtIndex:i] name]);
//        }
//
//
//        dispatch_async(dispatch_get_main_queue(), ^{
//            [self.collection setNeedsLayout];
//            [self.collection layoutIfNeeded];
//            [self.collection reloadData];
//        });
//    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma UICollectionViewDataSource, UICOllectionViewDelegate

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    //NSLog(@"%d", self.cManager.getCount);
    return self.cookieArray.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CookieCellCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CookieCell" forIndexPath:indexPath];

    cell.nameLabel.text = @"words";
    cell.priceLabel.text = @"£00.00";
    cell.cookieImage.image = [UIImage imageNamed:@"Default"];
    [cell.cookieImage.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [cell.cookieImage.layer setBorderWidth: 2.0];
    
    Cookie* cookie = [self.cookieArray objectAtIndex:indexPath.item];
    
    if(cookie != NULL){
        //NSString* myName = [NSString stringWithFormat:@"%@", cookie.name];
        cell.nameLabel.text = cookie.name;
        cell.priceLabel.text = [NSString stringWithFormat:@"£%@", cookie.price];
        cell.cookieImage.image = [self.imageArray objectAtIndex:indexPath.item];
    }
    return cell;
}

-(void) getCookies{
    
    NSURL *url = [NSURL URLWithString:@"https://m1xdev.coinscloud.com:49994/cookies.json"];
    NSData *d = [[NSData alloc] initWithContentsOfURL:url];
    
    NSDictionary *results = [NSJSONSerialization JSONObjectWithData:d options:NSJSONReadingAllowFragments error:nil];
    
    NSArray *cookies = [results objectForKey:@"cookies"];
    NSMutableArray *finalCookies = [NSMutableArray new];
    for(int i=0;i<cookies.count;++i){
        NSNumber *identification = [cookies[i] objectForKey:@"id"];
        NSString *name = [cookies[i] objectForKey:@"name"];
        NSNumber *price = [cookies[i] objectForKey:@"price"];
        NSString *imageURL = [cookies[i] objectForKey:@"imageURL"];
        NSString *date = [cookies[i] objectForKey:@"addedOn"];
        
        Cookie *cookie = [[Cookie alloc] initCookie:identification name:name price:price url:imageURL date:date];
        
        [finalCookies addObject:cookie];
    }
    
    self.cookieArray = finalCookies;
}

-(void) getImages{
    NSMutableArray* pics = [NSMutableArray new];
    for (int i=0; i<_cookieArray.count; ++i) {
        NSURL *url = [NSURL URLWithString:[[self.cookieArray objectAtIndex:i] imageURL]];
        
        NSData *d = [[NSData alloc] initWithContentsOfURL:url];
        [pics addObject:[UIImage imageWithData:d]];
        
    }
    self.imageArray = pics;
}

-(void)saveToCoreData{
//    
//    
//    NSManagedObjectContext *context = [AppDelegate ];
//    
//    NSManagedObject *newCookie;
//    newCookie = [NSEntityDescription insertNewObjectForEntityForName:@"Device" inManagedObjectContext:context];
//    
}

@end

















