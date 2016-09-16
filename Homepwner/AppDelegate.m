
#import "AppDelegate.h"
#import "ImageStore.h"
@interface AppDelegate ()
@property (nonatomic) ItemStore *itemStore;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Create an ItemStore
    ItemStore *itemStore = [ItemStore new];
    self.itemStore = itemStore;
    // Create an ImageStore
    ImageStore *imageStore = [ImageStore new];
    // Access the ItemsViewController
    UINavigationController *navController
    = (UINavigationController *)self.window.rootViewController;
    ItemsViewController *ivc = (ItemsViewController *)navController.topViewController;
    ivc.itemStore = itemStore;
    ivc.imageStore = imageStore;
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    BOOL success = [self.itemStore saveChanges];
    if (success) {
        NSLog(@"Saved %lu items to disk.", (unsigned long)self.itemStore.allItems.count);
    } else {
        NSLog(@"Failed to save the items to disk.");
    }
}

@end
