//
//  Type.m
//  PokedeskUniversal
//
//  Created by Lázaro Sánchez Campos on 20/11/13.
//  Copyright (c) 2013 UPM. All rights reserved.
//

#import "Type.h"

@implementation Type

- (instancetype) initWithName:(NSString*)name
                        races:(NSArray*)races
{
    if (self = [super init]) {
        _name = name;
        _races = races;
    }
    return self;
}

@end
