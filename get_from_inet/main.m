//
//  main.m
//  get_from_inet
//
//  Created by Anton Skutov on 11/13/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import <Foundation/Foundation.h>
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *targetURL = [NSURL URLWithString:@"https://pogoda.yandex.by/minsk/"];
        NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
        NSString *dataString = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
        NSArray *components = [dataString componentsSeparatedByString:@"thermometer_type_now"];
        NSLog(@"%@",[components[1] substringToIndex:10]);
    }
    return 0;
}
