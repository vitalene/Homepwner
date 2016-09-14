
#import "Item.h"

@implementation Item

- (instancetype)init {
    return [self initWithName:@"New Item" serialNumber:@"" valueInDollars:0];
}

- (instancetype)initWithName:(NSString *)name
                serialNumber:(NSString *)serialNumber
              valueInDollars:(int)valueInDollars {
    self = [super init];
    if (self) {
        _name = [name copy];
        _serialNumber = [serialNumber copy];
        _valueInDollars = valueInDollars;
        _dateCreated = [NSDate date];
    }
    return self;
}


- (instancetype)initWithRandomValues {
    NSArray *adjectives = @[ @"Fluffy", @"Rusty", @"Shiny" ];
    NSArray *nouns = @[ @"Bear", @"Spork", @"Mac" ];
    NSString *adjective = adjectives[arc4random_uniform((int)adjectives.count)];
    NSString *noun = nouns[arc4random_uniform((int)nouns.count)];
    NSString *name = [NSString stringWithFormat:@"%@ %@", adjective, noun];
    NSString *serial = [[[NSUUID UUID] UUIDString] substringToIndex:5];
    int value = (int)arc4random_uniform(100);
    return [self initWithName:name
                 serialNumber:serial
               valueInDollars:value];
}



@end
