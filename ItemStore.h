

#import <Foundation/Foundation.h>
@class Item;
@interface ItemStore : NSObject
- (void)removeItem:(Item *)item;
- (NSArray *)allItems;
- (Item *)createItem;
@end
