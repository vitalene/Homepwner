

#import "ImageStore.h"
#import <UIKit/UIKit.h>
@interface ImageStore ()
@property (nonatomic) NSCache *cache;
@end
@implementation ImageStore

- (instancetype)init {
    self = [super init];
    if (self) {
        _cache = [NSCache new];
    }
    return self;
}
- (NSURL *)imageURLForKey:(NSString *)key {
    NSArray *directories =
    [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory
                                           inDomains:NSUserDomainMask];
    NSURL *documentDirectory = directories.firstObject;
    return [documentDirectory URLByAppendingPathComponent:key];
}

// MARK: - Image Management
- (void)setImage:(UIImage *)image forKey:(NSString *)key {
    [self.cache setObject:image forKey:key];
    // Create a local URL where the image will be saved
    NSURL *imageURL = [self imageURLForKey:key];
    // Turn the image into compressed JPEG data and save it
    NSData *imageData = UIImageJPEGRepresentation(image, 0.5);
    [imageData writeToURL:imageURL atomically:YES];
}
- (UIImage *)imageForKey:(NSString *)key {
    UIImage *image = [self.cache objectForKey:key];
    if (image == nil) {
        NSURL *imageURL = [self imageURLForKey:key];
        NSError *error = nil;
        NSData *imageData = [NSData dataWithContentsOfURL:imageURL options:0 error:&error];
        if (imageData == nil) {
            NSLog(@"Failed to load image %@. Error: %@", key, error);
        } else {
            NSLog(@"Loaded image %@ from disk.", key);
            image = [UIImage imageWithData:imageData];
            [self.cache setObject:image forKey:key];
        }
    }
    return image;
}
- (void)deleteImageForKey:(NSString *)key {
    [self.cache removeObjectForKey:key];
    NSURL *imageURL = [self imageURLForKey:key];
    NSError *error = nil;
    BOOL success = [[NSFileManager defaultManager] removeItemAtURL:imageURL error:&error];
    if (success) {
        NSLog(@"Deleted the image at %@", imageURL);
    } else {
        NSLog(@"Failed to delete image at %@ because: %@", imageURL, error);
    }
}


@end
