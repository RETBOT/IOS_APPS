//
//  JuegoCarta.h
//  JuegoCartas_V1
//
//  Created by Roberto Esquivel Troncoso on 23/10/22.
//

#import <Foundation/Foundation.h>
#import "Carta.h"
//  By: RETBOT
NS_ASSUME_NONNULL_BEGIN

@interface JuegoCarta : Carta//NSObject
 @property (strong, nonatomic) NSString * suit;
 @property (nonatomic) NSUInteger rank;

+(NSArray *)validSuits;
+(NSUInteger)maxRank;

@end

NS_ASSUME_NONNULL_END
//  By: RETBOT
