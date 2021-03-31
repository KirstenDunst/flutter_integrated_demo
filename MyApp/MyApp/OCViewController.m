//
//  OCViewController.m
//  MyApp
//
//  Created by Destiny on 2019/12/11.
//  Copyright © 2019 Destiny. All rights reserved.
//

#import "OCViewController.h"

@interface OCViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flutterMsgLbl;

@end

@implementation OCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.flutterMsgLbl.text = [NSString stringWithFormat:@"从Flutter页面产值为：%@",self.flutterMsg];
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
