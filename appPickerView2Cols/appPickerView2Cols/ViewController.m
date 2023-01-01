//
//  ViewController.m
//  appPickerView2Cols
//
//  Created by Roberto Esquivel Troncoso on 03/10/22.
//
//  By: RETBOT
#import "ViewController.h"

@interface ViewController (){
    NSArray *productos;
    NSArray *colores;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    productos = @[@"Pantalla LCD",@"iPAD",@"Bicileta",@"Motocicleta",@"Carro",@"Camioneta"];

    colores = @[@"Rojo",@"Verde",@"Azul",@"Gris",@"Naranja",@"Aleatorio"];
    
    _pickerView1.dataSource = self;
    _pickerView1.delegate = self;
    
    // Concatenar el primer producto, con el primer color y asignarlo a la etiqueta
    
    _lbl1.text = [NSString stringWithFormat:@"%@, %@", [productos objectAtIndex:0], [colores objectAtIndex:0]];
    
    UIColor *color = [UIColor colorWithRed: (175./255) green:(200./255) blue:(100./255) alpha:1.0];
    
    self.view.backgroundColor = color;
    
    _imageView1.image=[UIImage imageNamed:@"PantallaLCD"];
    
    NSLog(@"%@",_lbl1.text);
 
}//  By: RETBOT

- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    // Component = columna
    if(component == 0)
        return productos.count;
    else
        return colores.count;
    
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (component == 0) {
        return [productos objectAtIndex:row];
    }else{
        return [colores objectAtIndex:row];
    }
    return nil;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    _lbl1.text = [NSString stringWithFormat:@"%@, %@",
                  [productos objectAtIndex:[_pickerView1 selectedRowInComponent:0]],
                  [colores objectAtIndex:[_pickerView1 selectedRowInComponent:1]]];
    
    int col = (int)[colores indexOfObject:[colores objectAtIndex:[_pickerView1 selectedRowInComponent:1]]];
    int ren = (int)[colores indexOfObject:[colores objectAtIndex:[_pickerView1 selectedRowInComponent:0]]];
    
    switch(col){
        case 0:
            self.imageView1.backgroundColor = [UIColor redColor];
            break;
        case 1:
            self.imageView1.backgroundColor = [UIColor greenColor];
            break;
        case 2:
            self.imageView1.backgroundColor = [UIColor blueColor];
            break;
        case 3:
            self.imageView1.backgroundColor = [UIColor lightGrayColor];
            break;
        case 4:
            self.imageView1.backgroundColor = [UIColor orangeColor];
            break;
        case 5:
            srand((unsigned int) time(NULL));
            UIColor *color = [UIColor colorWithRed:rand()%255/255.0 green:rand()%255/255.0 blue:rand()%255/255.0 alpha:1.0];
            self.imageView1.backgroundColor = color;
            break;
    }
    switch(ren){
        case 0:
            self.imageView1.image = [UIImage imageNamed:@"PantallaLCD"];
            break;
        case 1:
            self.imageView1.image = [UIImage imageNamed:@"ipad"];
            break;
        case 2:
            self.imageView1.image = [UIImage imageNamed:@"bici2"];
            break;
        case 3:
            self.imageView1.image = [UIImage imageNamed:@"moto1"];
            break;
        case 4:
            self.imageView1.image = [UIImage imageNamed:@"carro2"];
            break;
        case 5:
            self.imageView1.image = [UIImage imageNamed:@"camioneta2"];
            break;
    }
}
//  By: RETBOT
/*
- (void)encodeWithCoder:(nonnull NSCoder *)coder {
    
}

- (void)traitCollectionDidChange:(nullable UITraitCollection *)previousTraitCollection {
    <#code#>
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
    <#code#>
}

- (CGSize)sizeForChildContentContainer:(nonnull id<UIContentContainer>)container withParentContainerSize:(CGSize)parentSize {
    <#code#>
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
    <#code#>
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    <#code#>
}

- (void)willTransitionToTraitCollection:(nonnull UITraitCollection *)newCollection withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    <#code#>
}

- (void)didUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator {
    <#code#>
}

- (void)setNeedsFocusUpdate {
    <#code#>
}

- (BOOL)shouldUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context {
    <#code#>
}

- (void)updateFocusIfNeeded {
    <#code#>
}
*/
@end
//  By: RETBOT
