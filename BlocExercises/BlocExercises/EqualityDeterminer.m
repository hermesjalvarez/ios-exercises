//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    /* WORK HERE */
    
    BOOL areTheyEqual = [string1 isEqualToString:string2];
    
    return (areTheyEqual);
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
    /* WORK HERE */
    
    BOOL areTheyEqual = [number1 isEqualToNumber:number2];
    
    return (areTheyEqual);
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2 {
    /* WORK HERE */
    
    if (integer1 > integer2) {
        return YES;
    } else {
        return NO;
    }
    
}

@end
