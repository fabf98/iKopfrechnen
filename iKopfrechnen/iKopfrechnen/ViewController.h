//
//  ViewController.h
//  iKopfrechnen
//
//  Created by Fabio Franke on 07.04.14.
//  Copyright (c) 2014 Fabio Franke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSUserDefaults *defaults;
    NSTimer *timer;
}

@property (weak, nonatomic) IBOutlet UILabel *rekordLabel;
@property (weak, nonatomic) IBOutlet UILabel *ersterPlatzhalter;
@property (weak, nonatomic) IBOutlet UILabel *zweiterPlatzhalter;


@end
