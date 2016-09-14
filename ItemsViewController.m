
#import "ItemsViewController.h"
#import "ItemStore.h"
#import "Item.h"
@interface ItemsViewController ()


@end

@implementation ItemsViewController

-(void)viewDidLoad {
	[super viewDidLoad];
	
	// Get the height of the status bar
	
	CGFloat statusBarHeight = [UIApplication sharedApplication].statusBarFrame.size.height;
	
	UIEdgeInsets insets = UIEdgeInsetsMake(statusBarHeight, 0, 0, 0);
	self.tableView.contentInset = insets;
	self.tableView.scrollIndicatorInsets = insets;
}


// MARK: - Table View Data Source and Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.itemStore.allItems.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
// Get a new or recycled cell
			UITableViewCell *Cell = [self.tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"
				forIndexPath:indexPath];    
    Item *item = self.itemStore.allItems[indexPath.row];
    
    Cell.textLabel.text = item.name;
    Cell.detailTextLabel.text = [NSString stringWithFormat:@"$%d", item.valueInDollars];
    return Cell;
}

// MARK: - Actions
- (IBAction)addNewItem:(id)sender {
}
- (IBAction)toggleEditingMode:(id)sender {
    // if you are currently in editing mode
    if (self.editing) {
        // change the text of the button to inform the user
        [sender setTitle:@"Edit" forState:UIControlStateNormal];
        // turn off editing mode
        [self setEditing:NO animated:YES];
    } else {
        // change the text of the button to inform the user
        [sender setTitle:@"Done" forState:UIControlStateNormal];
        // turn on editing mode
        [self setEditing:YES animated:YES];
    }
    
}


@end
