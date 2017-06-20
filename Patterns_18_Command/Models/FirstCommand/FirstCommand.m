//
//  FirstCommand.m
//  Patterns_18_Command
//
//  Created by Uber on 20/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "FirstCommand.h"

@implementation FirstCommand



-(id) initWithArguments:(NSString *)anArgument
{
    self = [super init];
    
    self.originalString = anArgument;
    self.currentString = anArgument;
    
    return self;
}

-(void) execute
{
    self.currentString = @"This is a new string";
    [self printString];
    NSLog(@"Execute command called");
}

-(void) undo
{
    self.currentString = self.originalString;
    [self printString];
    NSLog(@"Undo of execute command called");
}

-(void) printString {
    NSLog(@"Current string is equal to %@", self.currentString);
}
@end
