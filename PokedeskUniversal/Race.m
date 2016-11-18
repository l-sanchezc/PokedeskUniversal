//
//  Race.m
//  PokedeskUniversal
//
//  Created by Lázaro Sánchez Campos on 20/11/13.
//  Copyright (c) 2013 UPM. All rights reserved.
//

#import "Race.h"

@implementation Race

- (instancetype) initWithCode:(NSNumber*)code
                         name:(NSString*)name
                         icon:(NSString*)icon
{
    if (self = [super init]) {
        _code = code;
        _name = name;
        _icon = icon;
    }
    return self;
}


@end
