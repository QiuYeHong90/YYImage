//
//  ViewController.swift
//  SwiftDemo
//
//  Created by york.yuanshuhui.ext@kumu.ph on 03/13/2026.
//  Copyright (c) 2026 york.yuanshuhui.ext@kumu.ph. All rights reserved.
//
import YYImage
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addImage() {
        let name = "wall-e"
        let image = YYImage.init(named: name)
        let imageView = YYAnimatedImageView.init(image: image)
        self.view.addSubview(imageView)
        imageView.frame = self.view.bounds
        
        image?.yy_saveToAlbum { url, err in
            
        }
    }
    
//    YYAnimatedImageView *imageView = [[YYAnimatedImageView alloc] initWithImage:image];
//    
//    if (size.width > 0 && size.height > 0) imageView.size = size;
//    imageView.centerX = self.view.width / 2;
//    imageView.top = [(UIView *)[_scrollView.subviews lastObject] bottom] + 30;
//    [_scrollView addSubview:imageView];
//    [YYImageExampleHelper addTapControlToAnimatedImageView:imageView];
//    [YYImageExampleHelper addPanControlToAnimatedImageView:imageView];
//    for (UIGestureRecognizer *g in imageView.gestureRecognizers) {
//        g.delegate = self;
//    }
//    
//    UILabel *imageLabel = [UILabel new];
//    imageLabel.backgroundColor = [UIColor clearColor];
//    imageLabel.frame = CGRectMake(0, 0, self.view.width, 20);
//    imageLabel.top = imageView.bottom + 10;
//    imageLabel.textAlignment = NSTextAlignmentCenter;
//    imageLabel.text = text;
//    [_scrollView addSubview:imageLabel];
//    
//    _scrollView.contentSize = CGSizeMake(self.view.width, imageLabel.bottom + 20);
}

