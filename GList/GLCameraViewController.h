//
//  GLCameraViewController.h
//  GList
//
//  Created by Omar Thanawalla on 6/22/13.
//  Copyright (c) 2013 NotACompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GLCameraViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) IBOutlet UIImageView *imageView;

- (IBAction)takePhoto:      (UIButton *)sender;
- (IBAction)selectPhoto:    (UIButton *)sender;

@end
