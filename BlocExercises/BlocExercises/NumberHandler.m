//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    
    return [NSNumber numberWithDouble:([number doubleValue] * 2.0)];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableArray *output = [[NSMutableArray alloc] init];
    NSInteger smaller = number;
    NSInteger bigger = otherNumber;
    
    if (otherNumber <= number) {
        smaller = otherNumber;
        bigger = number;
    }
    
    for (NSInteger i = smaller; i <= bigger; i++ ) {
        [output addObject:[NSNumber numberWithLong:i]];
    }
    
    NSArray *arrayOutput = [output copy];
    
    return arrayOutput;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    arrayOfNumbers = [arrayOfNumbers sortedArrayUsingSelector:@selector(compare:)];
    
    return [ arrayOfNumbers[0] integerValue ];
}

@end
