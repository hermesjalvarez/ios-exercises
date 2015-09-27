//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    if (number < otherNumber) {
        
        NSString *string = @"";
        NSString *numberString;
        
        for (NSInteger i = number; i <= otherNumber; i++) {
            numberString = [NSString stringWithFormat:@"%ld",(long)i];
            string = [string stringByAppendingString:numberString];
            //NSLog(@"%@", string);
        }
        
        return string;
        
    } else if (number > otherNumber) {
        
        NSString *string = @"";
        NSString *numberString;
        
        for (NSInteger i = otherNumber; i <= number; i++) {
            numberString = [NSString stringWithFormat:@"%ld",(long)i];
            string = [string stringByAppendingString:numberString];
            //NSLog(@"%@", string);
        }
        
        return string;
        
    } else { //they are equal in this case
        NSString *string = [NSString stringWithFormat:@"%ld",(long)number];
        return string;
    }
    
}

@end
