//
//  GLCameraViewController.m
//  GList
//
//  Created by Omar Thanawalla on 6/22/13.
//  Copyright (c) 2013 NotACompany. All rights reserved.
//

#import "GLCameraViewController.h"

@interface GLCameraViewController ()
    
@end

@implementation GLCameraViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
    if(![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]){
        UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Device has no Camera" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [myAlertView show];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)takePhoto:(UIButton *)sender{
    UIImagePickerController *picker =  [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;

    [self presentViewController:picker animated:YES completion:NULL];
}

-(IBAction)selectPhoto:(UIButton *)sender{
    UIImagePickerController *picker =  [[UIImagePickerController alloc]init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;

    [self presentViewController:picker animated:YES completion:NULL];
}


-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage *chosenImage =  info[UIImagePickerControllerEditedImage];
    self.imageView.image =  chosenImage;
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

-(void) imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

@end
