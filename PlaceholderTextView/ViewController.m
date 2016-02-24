//
//  ViewController.m
//  PlaceholderTextView
//
//  Created by 谢小御 on 16/2/23.
//  Copyright © 2016年 谢小御. All rights reserved.
//

#import "ViewController.h"
#import "XLTextView.h"
@interface ViewController ()
//输入控件
@property (nonatomic, weak) XLTextView *textView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupLabel];
    
    //设置输入控件
    [self setupTextView];
    
}

-(void)setupLabel {
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 40, self.view.frame.size.width, 44)];
    titleLabel.text = @"自定义textView控件";
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textColor = [UIColor blackColor];
    [self.view addSubview:titleLabel];
}

//添加输入控件
-(void)setupTextView {
    // 在这个控制器中，textView的contentInset.top默认会等于64
    XLTextView *textView = [[XLTextView alloc] init];
    textView.frame = CGRectMake(0, 100, self.view.frame.size.width, 200);
    textView.backgroundColor = [UIColor lightGrayColor];
    textView.font = [UIFont systemFontOfSize:15];
    //设置占位文字
    textView.placeholder = @"这里是占位文字...";
    //设置占位文字颜色
    //    textView.placeholderColor = [UIColor redColor];
    [self.view addSubview:textView];
    self.textView = textView;
    //监听通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange) name:UITextViewTextDidChangeNotification object:textView];
}
/**
 *  监听文字改变
 */
-(void)textDidChange {
    
    if (self.textView.hasText) {
        NSLog(@"文字发生改变----%@",self.textView.text);
    }
}

-(void)dealloc {
    //移除通知
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
