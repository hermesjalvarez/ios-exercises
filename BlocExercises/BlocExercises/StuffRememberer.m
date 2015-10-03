//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.rememberedArray = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.copiedArray = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.assignedFloat = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    return self.rememberedArray; //I removed mutable copy method here to make it work
}

- (NSMutableArray *) arrayYouShouldCopy {
    return [self.copiedArray mutableCopy];
}

- (CGFloat) floatYouShouldRemember {
    return self.assignedFloat;
}

@end