//
//  SpielBeendetViewController.m
//  iKopfrechnen
//
//  Created by Fabio Franke on 11.04.14.
//  Copyright (c) 2014 Fabio Franke. All rights reserved.
//

#import "SpielBeendetViewController.h"



@interface SpielBeendetViewController ()


@end

@implementation SpielBeendetViewController

@synthesize punkteLabel;
@synthesize rekordLabel;
@synthesize neuerRekordLabel;

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
    int punkte = [defaults integerForKey:@"Punkte"];
    NSString *punkteString = [NSString stringWithFormat:@"%d", punkte];
    [punkteLabel setText:(@"%d", punkteString)];
    
    
    int rekord = [defaults integerForKey:@"Rekord"];
    NSString *rekordString = [NSString stringWithFormat:@"%d", rekord];
    [rekordLabel setText:(@"%d", rekordString)];
    
    
    if (punkte <= 0) {
        
        punkteLabel.textColor = [UIColor redColor];
    }
    
    if (punkte > 0) {
        
        if (punkte == rekord) {
        
        [neuerRekordLabel setText:(@"Neuer Rekord!")];
        rekordLabel.textColor = [UIColor greenColor];
    }

    }
    
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



- (IBAction)hauptMenü:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}
@end
