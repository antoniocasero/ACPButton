//
//  ViewController.h
//  ACPButtons
//
//  Created by Antonio Casero Palmero on 7/14/13.
//  Copyright (c) 2013 ACP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ACPButton.h"


@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet ACPButton *testButtonNoImage1;
@property (weak, nonatomic) IBOutlet ACPButton *testButtonNoImage2;
@property (weak, nonatomic) IBOutlet ACPButton *testButtonNoImage3;
@property (weak, nonatomic) IBOutlet ACPButton *testButtonNoImage4;
@property (weak, nonatomic) IBOutlet ACPButton *testButtonNoImage5;
@property (weak, nonatomic) IBOutlet ACPButton *testButtonWithImage1;
@property (weak, nonatomic) IBOutlet ACPButton *testButtonWithImage2;

@end
