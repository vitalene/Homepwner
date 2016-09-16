

#import <Foundation/Foundation.h>
@class Item;
@interface ItemStore : NSObject
- (void)removeItem:(Item *)item;
- (NSArray *)allItems;
- (Item *)createItem;
- (void)moveItemAtIndex:(NSUInteger)oldIndex
                toIndex:(NSUInteger)newIndex;
- (BOOL)saveChanges;
@end


