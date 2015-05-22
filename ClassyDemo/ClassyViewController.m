//
//  ClassyViewController.m
//  ClassyDemo
//
//  Created by wang hui on 15/5/19.
//  Copyright (c) 2015年 Aldelo. All rights reserved.
//

#import "ClassyViewController.h"

@interface ClassyViewController ()

@property (nonatomic, strong) Class viewClass;

@end

@implementation ClassyViewController


-(instancetype)initWithTitle:(NSString *)title viewClass:(Class)viewClass
{
    
    self = [super init];
    if (self) {
        self.title = title;
        self.viewClass = viewClass;
    }
    return self;
}

- (void)loadView
{
    [super loadView];
    
    self.view = [[self.viewClass alloc] init];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

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
