
#import <UIKit/UIKit.h>
@class ItemStore;
@class ImageStore;
@interface ItemsViewController : UITableViewController
@property (nonatomic) ItemStore *itemStore;
@property (nonatomic) ImageStore *imageStore;
//@property(nonatomic) UITableView *tableView;

@end
