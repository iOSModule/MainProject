//
//  ViewController.m
//  MainProject
//
//  Created by 于鸿鹏 on 2021/2/4.
//

#import "ViewController.h"
#import <A_Category/CTMediator+A.h>

@interface ViewController ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.button];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];

    [self.button sizeToFit];
    self.button.center = self.view.center;
}

#pragma mark - event response
- (void)pushAViewControllerButton:(UIButton *)button
{
    /**
     未组件化时候的写法
     AViewController *viewController = [[AViewController alloc] init];
     */
    
    UIViewController *viewController = [[CTMediator sharedInstance] A_aViewController];
    
    [self.navigationController pushViewController:viewController animated:YES];
}

#pragma mark - getters and setters
- (UIButton *)button
{
    if (_button == nil) {
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        [_button setTitle:@"push A view controller" forState:UIControlStateNormal];
        [_button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(pushAViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

@end
