

#import <Foundation/Foundation.h>
@class Item;
@interface ItemStore : NSObject
- (NSArray *)allItems;
- (Item *)createItem;
@end
