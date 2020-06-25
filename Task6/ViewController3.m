//
//  ViewController3.m
//  Task6
//
//  Created by Albert Zhloba on 6/23/20.
//  Copyright © 2020 Albert Zhloba. All rights reserved.
//

#import "ViewController3.h"
@import Photos;

@interface ViewController3 ()

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) NSArray *imageNames;
@property (nonatomic, strong) PHImageRequestOptions *requestOptions;
@property (nonatomic, strong) NSMutableArray<PHAsset *>*assets;
@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //NSMutableArray *imageNames = [[NSMutableArray alloc] init];
    self.title = @"Gallery";
   // UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
   // UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layout];
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    [self.collectionView registerNib: [UINib nibWithNibName:@"photoCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"cell"];
    
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
//    NSMutableArray *imageNames2 = [[NSMutableArray alloc] init];
//
//    for (int i = 1; i < 4; i++) {
//        imageNames1 = [[NSString alloc] initWithFormat:@"Image", i];
    self.requestOptions = [[PHImageRequestOptions alloc] init];
    self.requestOptions.resizeMode   = PHImageRequestOptionsResizeModeExact;
    self.requestOptions.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;

    // this one is key
    self.requestOptions.synchronous = YES;
   
    
    
//    NSMutableArray *assets = [[NSMutableArray alloc] init];;
//    self.assets = [NSMutableArray arrayWithArray:assets];
//    PHFetchResult *smartAlbum = [PHAssetCollection fetchAssetCollectionsWithType:PHAssetCollectionTypeAlbum subtype:PHAssetCollectionSubtypeAny options:nil];
//    for (PHAssetCollection *collection in smartAlbum){
//        NSLog(@"Title Album= %@",collection.localizedTitle);
//        [assets addObject:collection];
//    }
//    
    
//    PHImageManager *manager = [PHImageManager defaultManager];
//    PHFetchResult *assetsFetchResult = [PHAssetCollection fetchAssetCollectionsWithType:PHAssetCollectionTypeSmartAlbum | PHAssetCollectionTypeAlbum subtype:PHAssetCollectionSubtypeAny options:nil];
    //[PHAsset fetchAssetsInAssetCollection: (PHAssetCollection *) collection options:nil];
    
    
    
   // NSMutableArray *images = [NSMutableArray arrayWithCapacity:[assets count]];

    // assets contains PHAsset objects.
   //  __block UIImage *ima;

   // for (PHAsset *asset in assetsFetchResult) {
        // Do something with the asset

//        [manager requestImageForAsset:asset
//                           targetSize:PHImageManagerMaximumSize
//                          contentMode:PHImageContentModeDefault
//                              options:self.requestOptions
//                        resultHandler:^void(UIImage *image, NSDictionary *info) {
//                            ima = image;
//
//                            [images addObject:ima];
//                        }];
//        [manager requestImageForAsset:asset
//                           targetSize: PHImageManagerMaximumSize contentMode:PHImageContentModeAspectFit options:self.requestOptions
//                        resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info) {
//        //add image to array
//                    [self.assets addObject:result];
//                }];

    }
    
    
    //}
    // Do any additional setup after loading the view from its nib.


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [_assets count];
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
