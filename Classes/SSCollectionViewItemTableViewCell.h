//
//  SSCollectionViewItemTableViewCell.h
//  SSToolkit
//
//  Created by Sam Soffes on 3/10/11.
//  Copyright 2011 Sam Soffes. All rights reserved.
//

@class SSCollectionView;

@interface SSCollectionViewItemTableViewCell : UITableViewCell

@property (nonatomic, assign) CGSize itemSize;
@property (nonatomic, assign) CGFloat itemSpacing;
@property (nonatomic) NSArray *items;
@property (nonatomic, weak) SSCollectionView *collectionView;

- (id)initWithReuseIdentifier:(NSString *)aReuseIdentifier;

@end
