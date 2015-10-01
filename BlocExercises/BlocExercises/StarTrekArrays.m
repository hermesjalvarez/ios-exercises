//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *array = [characterString componentsSeparatedByString:@";"];
    return array;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *string = [characterArray componentsJoinedByString:@";"];
    return string;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSArray *sortedStrings = [characterArray sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    return sortedStrings;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    NSMutableArray *mutableCharacterArray = [NSMutableArray arrayWithArray:characterArray];
    
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    
    [mutableCharacterArray filterUsingPredicate:containsWorf];
    
    return (mutableCharacterArray.count >=1) ? YES : NO ;
    
//    for (NSString *word in mutableCharacterArray) {
//        
//        if ( [word.lowercaseString  isEqual: @"worf"] ) {
//            return YES;
//        }
//        
//    }
    
//    return NO;
}

@end
