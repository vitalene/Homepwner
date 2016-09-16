
#import <Foundation/Foundation.h>

@interface Item : NSObject
@property (copy, nonatomic) NSString *itemKey;
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic) NSDate *dateCreated;
- (instancetype)initWithCoder:(NSCoder *)aDecoder NS_DESIGNATED_INITIALIZER;

- (instancetype)initWithName:(NSString *)name
                serialNumber:(NSString *)serialNumber
              valueInDollars:(int)valueInDollars NS_DESIGNATED_INITIALIZER;

- (instancetype)initWithRandomValues;



@end
