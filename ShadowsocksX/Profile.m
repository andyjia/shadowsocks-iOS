// Generated by json_to_model

#import "Profile.h"

@implementation Profile  {

}

- (id)initWithJSONDictionary:(NSDictionary *)dictionary {

    self = [super init];
    if (![dictionary isKindOfClass:[NSDictionary class]])
        return nil;

    if (self) {
 
        self.server = (dictionary[@"server"] != [NSNull null]) ? dictionary[@"server"] : nil;
  
        self.serverPort = (dictionary[@"server_port"] != [NSNull null]) ? [dictionary[@"server_port"] integerValue] : 0;
  
        self.remarks = (dictionary[@"remarks"] != [NSNull null]) ? dictionary[@"remarks"] : nil;
  
        self.password = (dictionary[@"password"] != [NSNull null]) ? dictionary[@"password"] : nil;
  
        self.method = (dictionary[@"method"] != [NSNull null]) ? dictionary[@"method"] : nil;

        self.bindAddr = (dictionary[@"bind_addr"] != [NSNull null]) ? dictionary[@"bind_addr"] : @"127.0.0.1";
        self.bindPort = (dictionary[@"bind_port"] != [NSNull null]) ? [dictionary[@"bind_port"] integerValue] : 0;
 
    }
    return self;
}

- (id)initWithJSONData:(NSData *)data {
    self = [super init];
    if (self) {
        NSError *error = nil;
        id result = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        if (result) {
            self = [self initWithJSONDictionary:result];
        } else {
            return nil;
        }
    }
    return self;
}

- (NSDictionary *)JSONDictionary {

    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];

 
    dictionary[@"server"] = (self.server != nil) ? self.server : [NSNull null];
  
    dictionary[@"server_port"] = @(self.serverPort);
  
    dictionary[@"remarks"] = (self.remarks != nil) ? self.remarks : [NSNull null];
  
    dictionary[@"password"] = (self.password != nil) ? self.password : [NSNull null];
  
    dictionary[@"method"] = (self.method != nil) ? self.method : [NSNull null];

    dictionary[@"bind_addr"] = (self.bindAddr != nil) ? self.bindAddr : [NSNull null];

    dictionary[@"bind_port"] = @(self.bindPort);
 
    return dictionary;
}


- (NSData *)JSONData {
    NSError *error = nil;
    NSData *data = [NSJSONSerialization dataWithJSONObject:[self JSONDictionary] options:0 error:&error];
    if (error) {
        @throw error;
    }
    return data;
}


@end