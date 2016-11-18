//
//  PokedeskModel.h
//  PokedeskUniversal
//
//  Created by Lázaro Sánchez Campos on 20/11/13.
//  Copyright (c) 2013 UPM. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * Modelo de datos de los pokemons.
 * Tiene informacion sobre las razas y los tipos de pokemons.
 */
@interface PokedeskModel : NSObject

/**
 * Array de objetos Race.
 */
@property (nonatomic,strong) NSArray* races;

/**
 * Array de objetos Type.
 */
@property (nonatomic,strong) NSArray* types;

@end