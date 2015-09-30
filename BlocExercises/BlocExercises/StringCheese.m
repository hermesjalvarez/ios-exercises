//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *output = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return output;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
        //NSRange cheeseRange = [[cheeseName lowercaseString] rangeOfString:@" cheese"];
        NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch|NSBackwardsSearch];
        NSString *removedCheese = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        return removedCheese;
    } else {
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
        return cheeseName;
    }

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */

    return nil;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        NSString *output = [NSString stringWithFormat:@"%lu cheese", (long)cheeseCount];
        return output;
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        NSString *output = [NSString stringWithFormat:@"%lu cheeses", (long)cheeseCount];
        return output;
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return nil;
}

@end
