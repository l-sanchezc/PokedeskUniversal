//
//  Race.h
//  PokedeskUniversal
//
//  Created by Lázaro Sánchez Campos on 20/11/13.
//  Copyright (c) 2013 UPM. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * Clase para representar una raza de pokemon.
 */
@interface Race : NSObject

@property (nonatomic,strong) NSNumber* code;
@property (nonatomic,strong) NSString* name;
@property (nonatomic,strong) NSString* icon;

/**
 * Inicializador de la clase Race.
 * @param code Codigo de la raza.
 * @param name Nombre de la raza.
 * @param icon Nombre del fichero del icono de la raza.
 */
- (instancetype) initWithCode:(NSNumber*)code
                         name:(NSString*)name
                         icon:(NSString*)icon;

@end