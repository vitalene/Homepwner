
#import "ItemCell.h"

@implementation ItemCell

- (void)updateLabels {
    UIFont *bodyFont = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    self.nameLabel.font = bodyFont;
    self.valueLabel.font = bodyFont;
    UIFont *captionFont = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    self.serialNumberLabel.font = captionFont;
}
@end
