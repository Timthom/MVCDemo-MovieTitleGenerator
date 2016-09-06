//
//  TitelGenerator.m
//  MVCDemo
//
//  Created by Thomas on 2016-02-02.
//  Copyright © 2016 Thomas Månsson. All rights reserved.
//

#import "TitelGenerator.h"

@interface TitelGenerator()
@property(nonatomic) NSArray *nouns;
@property(nonatomic) NSArray *adjektive;
@end


@implementation TitelGenerator

-(instancetype) init {
    self = [super init];
    if(self) {
        self.nouns = @[@"Car", @"Dagger", @"Fork", @"Plane", @"Rollercoaster", @"Dinosaur", @"Train", @"Female", @"Window", @"Snitch", @"Male", @"Person"];
        self.adjektive = @[@"War", @"Mystery", @"Hero", @"Blue", @"Dredful", @"Giver", @"Ridicullus", @"Red", @"Green", @"Stupid", @"Funny"];
    }
    return self;
}


-(NSString*)randomElement:(NSArray*)array {

    return array[arc4random() % array.count];
}



-(NSString*)generateTitle {
    
    NSString *adjective = [self randomElement:self.adjektive];
    NSString *noun1 = [self randomElement:self.nouns];
    NSString *noun2 = [self randomElement:self.nouns];
    return [NSString stringWithFormat:@"The %@ of the %@ %@", noun1, adjective, noun2];
}

@end
