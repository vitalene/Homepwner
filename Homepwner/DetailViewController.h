#import "Item.h"
#import <UIKit/UIKit.h>
@class ImageStore;
@interface DetailViewController : UIViewController
@property (nonatomic) Item *item;
@property (nonatomic) ImageStore *imageStore;
@end
