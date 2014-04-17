//
//  ViewController.m
//  iKopfrechnen
//
//  Created by Fabio Franke on 07.04.14.
//  Copyright (c) 2014 Fabio Franke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize rekordLabel;
@synthesize ersterPlatzhalter;
@synthesize zweiterPlatzhalter;


-(void) rekordNeuLaden {
    
    defaults = [NSUserDefaults standardUserDefaults];
    int rekord = [defaults integerForKey:@"Rekord"];
    
    NSString *rekordString = [NSString stringWithFormat:@"%d", rekord];
    
    
    rekordLabel.text = [NSString stringWithFormat:@"Rekord: %@", rekordString];

    
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(rekordNeuLaden) userInfo:nil repeats:YES];
    
    defaults = [NSUserDefaults standardUserDefaults];
    int rekord = [defaults integerForKey:@"Rekord"];
    
    NSString *rekordString = [NSString stringWithFormat:@"%d", rekord];
    
    
    rekordLabel.text = [NSString stringWithFormat:@"Rekord: %@", rekordString];
    
    
    

    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
