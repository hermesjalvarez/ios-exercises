//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    for (NSString *key in characterDictionary) {
        if ([key isEqual:@"favorite drink"]) {
            return [characterDictionary objectForKey:key];
        }
    }

    return nil;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    NSMutableArray *output = [[NSMutableArray alloc] init];
    
    for (NSDictionary *key in charactersArray) {
        [output addObject:[key objectForKey:@"favorite drink"]];
    }
    
    return output;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {

    NSMutableDictionary *mutableCharacterDictionary = [characterDictionary mutableCopy];
    
    [mutableCharacterDictionary setObject:@"Live long and prosper" forKey:@"quote"];
    
    return mutableCharacterDictionary;
}

@end
