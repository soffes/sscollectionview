//
//  CERootViewController.m
//  SSCollectionView Example
//
//  Created by Sam Soffes on 3/3/12.
//  Copyright (c) 2012 Synthetic. All rights reserved.
//

#import "CERootViewController.h"
#import "SSCollectionView.h"
#import "SSCollectionViewItem.h"

@implementation CERootViewController

#pragma mark - UIViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.title = @"Collection View";
	
	self.collectionView.extremitiesStyle = SSCollectionViewExtremitiesStyleScrolling;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
	if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
		return toInterfaceOrientation != UIInterfaceOrientationPortraitUpsideDown;
	}
	return YES;
}


#pragma mark - SSCollectionViewDataSource

- (NSUInteger)numberOfSectionsInCollectionView:(SSCollectionView *)aCollectionView {
	return 10;
}


- (NSUInteger)collectionView:(SSCollectionView *)aCollectionView numberOfItemsInSection:(NSUInteger)section {
	return 50;
}


- (SSCollectionViewItem *)collectionView:(SSCollectionView *)aCollectionView itemForIndexPath:(NSIndexPath *)indexPath {
	static NSString *const itemIdentifier = @"itemIdentifier";
	
	SSCollectionViewItem *item = [aCollectionView dequeueReusableItemWithIdentifier:itemIdentifier];
	if (item == nil) {
		item = [[SSCollectionViewItem alloc] initWithStyle:SSCollectionViewItemStyleBlank reuseIdentifier:itemIdentifier];
	}
	
	item.backgroundColor = [UIColor lightGrayColor];
	
//	CGFloat size = 80.0f * [[UIScreen mainScreen] scale];
//	NSInteger i = (50 * indexPath.section) + indexPath.row;
//	item.imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.gravatar.com/avatar/%i?s=%0.f&d=identicon", i, size]];
	
	return item;
}


- (UIView *)collectionView:(SSCollectionView *)aCollectionView viewForHeaderInSection:(NSUInteger)section {
	UILabel *header = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, self.view.frame.size.width, 40.0f)];
	header.autoresizingMask = UIViewAutoresizingFlexibleWidth;
	header.text = [NSString stringWithFormat:@"Section %i", section + 1];
	header.shadowColor = [UIColor whiteColor];
	header.shadowOffset = CGSizeMake(0.0f, 1.0f);
	header.backgroundColor = [UIColor colorWithWhite:1.0f alpha:0.8f];
	return header;
}


#pragma mark - SSCollectionViewDelegate

- (CGSize)collectionView:(SSCollectionView *)aCollectionView itemSizeForSection:(NSUInteger)section {
	return CGSizeMake(80.0f, 80.0f);
}


- (void)collectionView:(SSCollectionView *)aCollectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
	NSString *title = [NSString stringWithFormat:@"You selected item %i in section %i!",
					   indexPath.row + 1, indexPath.section + 1];
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:nil delegate:nil
										  cancelButtonTitle:@"Oh, awesome!" otherButtonTitles:nil];
	[alert show];
}


- (CGFloat)collectionView:(SSCollectionView *)aCollectionView heightForHeaderInSection:(NSUInteger)section {
	return 40.0f;
}

@end
