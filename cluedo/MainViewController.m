//
//  MainViewController.m
//  cluedo
//
//  Created by Eunice Saldivar on 7/22/15.
//  Copyright (c) 2015 jumpdigital. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = YES;
    self.startOptions.hidden = YES;
    
    UIGraphicsBeginImageContext(self.bgImage.frame.size);
    [[UIImage imageNamed:@"bg.jpg"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.bgImage.backgroundColor = [UIColor colorWithPatternImage:image];
}


- (IBAction)newPressed:(id)sender{
    UIAlertView *alertWarning = [[UIAlertView alloc] initWithTitle:@"Start New Game?"
                                                           message:@"Are you sure you want to start a new game? Previous game will be lost."
                                                          delegate:self
                                                 cancelButtonTitle:@"Cancel"
                                                 otherButtonTitles:@"Proceed", nil];
    [alertWarning show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 1){
        self.startView.hidden = YES;
        self.startOptions.hidden = NO;
    }
    
}

/*****************************************************************************************/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
