//
//  EinstellungenTableViewController.m
//  iKopfrechnen
//
//  Created by Fabio Franke on 13.04.14.
//  Copyright (c) 2014 Fabio Franke. All rights reserved.
//

#import "EinstellungenViewController.h"



@interface EinstellungenViewController ()



@end



@implementation EinstellungenViewController



@synthesize maxErgebnisLabel;

@synthesize maxErgenisSlider;

@synthesize plusSwitch;

@synthesize minusSwitch;

@synthesize malSwitch;

@synthesize durchSwitch;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil

{
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        
        // Custom initialization
        
    }
    
    return self;
    
}



- (void)viewDidLoad

{
    
    
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    
    
    
    
    int maxErgebnis = [defaults integerForKey:@"maxErgebnis"];
    
    
    
    BOOL plus = [defaults boolForKey:@"plus"];
    
    BOOL minus = [defaults boolForKey:@"minus"];
    
    BOOL mal = [defaults boolForKey:@"mal"];
    
    BOOL geteiltDurch = [defaults boolForKey:@"geteiltDurch"];
    
    
    
    self.maxErgenisSlider.value = maxErgebnis;
    
    
    
    self.plusSwitch.on = plus;
    
    self.minusSwitch.on = minus;
    
    self.malSwitch.on = mal;
    
    self.durchSwitch.on = geteiltDurch;
    
    
    
    
    
    
    
    maxErgebnisLabel.text = [NSString stringWithFormat:@"%d", maxErgebnis];
    
    
    
    
    
    
    
    
    
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
}



- (void)didReceiveMemoryWarning

{
    
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
    
}



/*
 
 #pragma mark - Navigation
 
 
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 
 {
 
 // Get the new view controller using [segue destinationViewController].
 
 // Pass the selected object to the new view controller.
 
 }
 
 */





- (IBAction)maxErgebnisSlider:(id)sender {
    
    
    
    UISlider *slider = (UISlider *)sender;
    
    
    
    int maxErgebnis = (int)(slider.value);
    
    
    
    NSString *maxErgebnisString = [NSString stringWithFormat:@"%d", maxErgebnis];
    
    
    
    [maxErgebnisLabel setText:(@"%d", maxErgebnisString)];
    
    
    
    
    
}



















- (IBAction)cancelAndDismiss:(UIBarButtonItem *)sender {
    
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}



















- (IBAction)saveAndDismiss:(UIBarButtonItem *)sender {
    
    
    
    
    
    int maxErgebnis = self.maxErgenisSlider.value;
    
    
    
    BOOL plus = plusSwitch.on;
    
    BOOL minus = minusSwitch.on;
    
    BOOL mal = malSwitch.on;
    
    BOOL geteiltDurch = durchSwitch.on;
    
    
    
    if (plus == NO && minus == NO && mal == NO && geteiltDurch == NO) {
        
        
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Achtung!" message:@"Du musst mindestens ein Rechenzeichen auswählen" delegate:self cancelButtonTitle:@"OK mach ich" otherButtonTitles:nil];
        
        
        
        [alert show];
        
        
        
    }
    
    
    
    else {
        
        
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        
        
        [defaults setInteger:maxErgebnis forKey:@"maxErgebnis"];
        
        
        
        [defaults setBool:plus forKey:@"plus"];
        
        [defaults setBool:minus forKey:@"minus"];
        
        [defaults setBool:mal forKey:@"mal"];
        
        [defaults setBool:geteiltDurch forKey:@"geteiltDurch"];
        
        
        
        [self dismissViewControllerAnimated:YES completion:nil];
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

















@end

