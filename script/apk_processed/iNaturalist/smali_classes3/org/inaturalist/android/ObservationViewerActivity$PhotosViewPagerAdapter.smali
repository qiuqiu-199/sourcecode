.class Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ObservationViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotosViewPagerAdapter"
.end annotation


# instance fields
.field private mImageCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lorg/inaturalist/android/ObservationViewerActivity;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 9

    .line 299
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->mImageCursor:Landroid/database/Cursor;

    .line 300
    iget-boolean v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    if-nez v0, :cond_1

    .line 301
    iget-object v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v6, "(_observation_id=? or observation_id=?) and ((is_deleted = 0) OR (is_deleted IS NULL))"

    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/String;

    iget-object v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    .line 305
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v1

    const-string v8, "position ASC, id ASC, _id ASC"

    .line 302
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->mImageCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v5, "_observation_id=? and ((is_deleted = 0) OR (is_deleted IS NULL))"

    new-array v6, v1, [Ljava/lang/String;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    .line 311
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v2

    const-string p1, "position ASC, id ASC, _id ASC"

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, p1

    .line 308
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->mImageCursor:Landroid/database/Cursor;

    .line 314
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->mImageCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    return-void
.end method

.method private findPhotoInStorage(Ljava/lang/Integer;)Landroid/database/Cursor;
    .locals 7

    .line 333
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "title"

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v0, "orientation"

    const/4 v4, 0x2

    aput-object v0, v3, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 337
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    return-object p1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 439
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-boolean v0, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->mImageCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->mImageCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8

    .line 343
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-boolean v0, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->mImageCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 345
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 346
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x0

    .line 353
    iget-object v4, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-boolean v4, v4, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    if-nez v4, :cond_1

    .line 354
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->mImageCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->mImageCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 355
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->mImageCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->mImageCursor:Landroid/database/Cursor;

    const-string v5, "photo_url"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 356
    iget-object v4, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->mImageCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->mImageCursor:Landroid/database/Cursor;

    const-string v6, "photo_filename"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 357
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 359
    iget-object v4, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->mImageCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->mImageCursor:Landroid/database/Cursor;

    const-string v6, "original_photo_filename"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 363
    :cond_1
    iget-object v4, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v4, v4, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v4, v4, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/inaturalist/android/ObservationPhoto;

    iget-object v4, v4, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    move-object v7, v4

    move-object v4, v1

    move-object v1, v7

    :cond_2
    :goto_0
    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 368
    new-instance v4, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    invoke-direct {v4, v3, v2}, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 371
    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 372
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 373
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter$1;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter$1;-><init>(Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;)V

    .line 374
    invoke-virtual {v1, v0, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    goto :goto_1

    .line 395
    :cond_3
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$100(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v1

    .line 396
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v2}, Lorg/inaturalist/android/ObservationViewerActivity;->access$100(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v2

    .line 400
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 401
    invoke-static {v3, v2, v1}, Lorg/inaturalist/android/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 404
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 406
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v1, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 407
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 408
    invoke-static {v1, v4}, Lorg/inaturalist/android/ImageUtils;->rotateAccordingToOrientation(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 409
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 411
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 415
    :goto_1
    new-instance v1, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter$2;

    invoke-direct {v1, p0, p2}, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter$2;-><init>(Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v5}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 329
    check-cast p2, Landroid/widget/ImageView;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
