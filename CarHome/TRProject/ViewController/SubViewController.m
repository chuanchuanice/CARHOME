//
//  SubViewController.m
//  TRProject
//
//  Created by tarena on 2017/1/11.
//  Copyright © 2017年 Tedu. All rights reserved.
//

#import "SubViewController.h"

@interface SubViewController ()<UIWebViewDelegate >
@property(nonatomic)UIWebView*webview;

@end

@implementation SubViewController
-(instancetype)initWithpath:(NSString*)path{
    if (self=[super init]) {
        self.path=path;
    }
    return self;
}
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    return YES;
}
- (void)webViewDidStartLoad:(UIWebView *)webView{
    [UIApplication sharedApplication].networkActivityIndicatorVisible=YES;
    MBProgressHUD*hud=[MBProgressHUD showHUDAddedTo:self.view animated:YES];
    [hud hide:YES afterDelay:2];
    hud.mode=MBProgressHUDModeText;
    hud.labelText=@"请稍等......";
}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [UIApplication sharedApplication].networkActivityIndicatorVisible=NO;
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    [UIApplication sharedApplication].networkActivityIndicatorVisible=NO;
}
-(UIWebView *)webview{
    if (!_webview) {
        _webview =[UIWebView new];
        
        _webview.delegate=self;
        [self.view addSubview:_webview];
        [_webview mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(0);
        }];
        [_webview loadRequest:[NSURLRequest requestWithURL:self.path.URL]];
    }return _webview;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self webview];
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
