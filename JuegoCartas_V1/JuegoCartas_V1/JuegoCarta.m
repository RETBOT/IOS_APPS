//
//  JuegoCarta.m
//  JuegoCartas_V1
//
//  Created by Roberto Esquivel Troncoso on 23/10/22.
////  By: RETBOT

#import "JuegoCarta.h"

@implementation JuegoCarta
//  By: RETBOT
-(int)match:(NSArray *)otherCards{
    int score = 0;
    if([otherCards count] == 1){
        JuegoCarta *otrasCartas = [otherCards firstObject];
        if (otrasCartas.rank == self.rank) {
            score = 4;
        } else if([otrasCartas.suit isEqualToString:self.suit]){
            score = 1;
        }
    }
    return score;
}

-(NSString *) contents {
    NSArray *rankStrings = [JuegoCarta rankStrings];
    return  [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;

+(NSArray *) validSuits{
    return @[@"♥︎",@"♦︎",@"♠︎",@"♣︎"];
}
-(void) setSuit:(NSString *)suit{
    if([[JuegoCarta validSuits] containsObject:suit]){
        _suit = suit;
    }
}//  By: RETBOT

-(NSString *)suit{
    return  _suit ? _suit : @"?";
}

+(NSArray *)rankStrings {
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}
+(NSUInteger)maxRank {return [[self rankStrings] count] - 1 ;}

-(void)setRank:(NSUInteger) rank{
    if(rank <= [JuegoCarta maxRank]){
        _rank = rank;
    }
}

@end
//  By: RETBOT
