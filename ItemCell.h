
#import <UIKit/UIKit.h>

@interface ItemCell : UITableViewCell
@property (nonatomic) IBOutlet UILabel *nameLabel;
@property (nonatomic) IBOutlet UILabel *serialNumberLabel;
@property (nonatomic) IBOutlet UILabel *valueLabel;
- (void)updateLabels;
@end
