//
//  ViewController.m
//  appSonidos
//
//  Created by Usuario invitado on 10/10/22.
////  By: RETBOT

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
{
    AVAudioPlayer *audioPlayer;
    NSArray *canciones;
    NSArray *nombreCanciones;
    NSInteger volumen;
}
@end
//  By: RETBOT
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    canciones = @[@"ET",@"Helicoptero",@"Mario Bros",@"Relax"];

    nombreCanciones = @[@"%@/et.mp3",@"%@/helicoptero.mp3",@"%@/mariobros.mp3",@"%@/relax.mp3"];
    
    _pvCanciones.dataSource = self;
    _pvCanciones.delegate = self;
    
    volumen = 20;
}

- (IBAction)btnPlay:(id)sender {
    [audioPlayer play];
}
- (IBAction)btnPausa:(id)sender {
    [audioPlayer pause];
}

- (IBAction)btnStop:(UIButton *)sender {
    [audioPlayer stop];
}

- (IBAction)sliderVolumen:(UISlider *)sender {
    volumen = sender.value;
}

-(NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return canciones.count;
    //  By: RETBOT
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (component == 0) {
        return [canciones objectAtIndex:row];
    }
    return nil;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSString *path = [NSString stringWithFormat:@"%@%@",
        [[NSBundle mainBundle] resourcePath],
        [nombreCanciones objectAtIndex:row]];
        
    NSURL *sonidoUrl = [NSURL fileURLWithPath:path];
    
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:sonidoUrl error:nil];
    
    audioPlayer.volume = volumen;
}

@end
//  By: RETBOT
