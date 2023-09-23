.class public Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ObservationPhotosViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationPhotosViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdPicsPagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$OnZoomListener;
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field mDefaultTaxonIcon:I

.field mImageThumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mViewPager:Landroid/support/v4/view/ViewPager;

.field private mZoomListener:Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$OnZoomListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;II)V
    .locals 7

    .line 236
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mZoomListener:Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$OnZoomListener;

    .line 237
    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mActivity:Landroid/app/Activity;

    .line 238
    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 239
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mImages:Ljava/util/List;

    .line 240
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mImageThumbnails:Ljava/util/List;

    .line 242
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v4, "_observation_id=? or observation_id=?"

    const/4 p1, 0x2

    new-array v5, p1, [Ljava/lang/String;

    .line 245
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v5, p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v5, p3

    const-string v6, "position ASC, id ASC, _id ASC"

    .line 242
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 248
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 250
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p3, "photo_filename"

    .line 253
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "original_photo_filename"

    .line 254
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    if-eqz p3, :cond_1

    .line 256
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    move-object p3, p4

    :cond_1
    if-eqz p4, :cond_2

    .line 261
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p3, p4

    :cond_2
    const-string p4, "photo_url"

    .line 267
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 268
    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mImages:Ljava/util/List;

    if-eqz p4, :cond_3

    move-object p3, p4

    :cond_3
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_4

    .line 272
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {p4, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p4, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/small"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {p4, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 273
    iget-object p4, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mImageThumbnails:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    :cond_4
    iget-object p3, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mImageThumbnails:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-nez p3, :cond_0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;IILandroid/view/View$OnClickListener;)V
    .locals 0

    .line 227
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;II)V

    .line 228
    iput-object p5, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lorg/json/JSONObject;Z)V
    .locals 5

    .line 285
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mZoomListener:Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$OnZoomListener;

    .line 286
    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mActivity:Landroid/app/Activity;

    .line 287
    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 288
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mImages:Ljava/util/List;

    .line 289
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mImageThumbnails:Ljava/util/List;

    .line 290
    invoke-static {p3}, Lorg/inaturalist/android/TaxonUtils;->observationIcon(Lorg/json/JSONObject;)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mDefaultTaxonIcon:I

    if-eqz p4, :cond_0

    const-string p1, "taxon_photos"

    goto :goto_0

    :cond_0
    const-string p1, "observation_photos"

    .line 292
    :goto_0
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 293
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_5

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 295
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p4

    if-ge p3, p4, :cond_6

    .line 296
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p4

    if-eqz p4, :cond_4

    const-string v0, "photo"

    .line 298
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    if-eqz p4, :cond_4

    const-string v0, "original_url"

    .line 300
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "original_url"

    :goto_2
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_1
    const-string v0, "large_url"

    goto :goto_2

    :goto_3
    if-eqz v0, :cond_3

    .line 301
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 302
    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mImageThumbnails:Ljava/util/List;

    const-string v1, "thumb_url"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "thumb_url"

    :goto_4
    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_5

    :cond_2
    const-string v1, "small_url"

    goto :goto_4

    :goto_5
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_3
    const-string v0, "url"

    .line 305
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_4

    const-string v0, "."

    .line 307
    invoke-virtual {p4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mImages:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2f

    invoke-virtual {p4, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p4, p2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "original."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mImageThumbnails:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p4, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "square."

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_6
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    .line 317
    :cond_5
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mImages:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mImageThumbnails:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lorg/json/JSONObject;ZLandroid/view/View$OnClickListener;)V
    .locals 0

    .line 280
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lorg/json/JSONObject;Z)V

    .line 281
    iput-object p5, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 213
    iget-object p0, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;)Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$OnZoomListener;
    .locals 0

    .line 213
    iget-object p0, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mZoomListener:Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$OnZoomListener;

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 456
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 7

    .line 329
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0d00a6

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v3, -0x1

    .line 330
    invoke-virtual {p1, v0, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const p1, 0x7f0a0178

    .line 331
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v3, 0x7f0a017a

    .line 332
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 334
    iget-object v4, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mImages:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 337
    invoke-static {v4}, Lorg/inaturalist/android/FileUtils;->isLocal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 340
    :try_start_0
    new-instance p2, Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-direct {p2, p1}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 342
    :try_start_1
    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lorg/inaturalist/android/GlideApp;->with(Landroid/app/Activity;)Lorg/inaturalist/android/GlideRequests;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v1, v2}, Lorg/inaturalist/android/GlideRequests;->load(Ljava/lang/Object;)Lorg/inaturalist/android/GlideRequest;

    move-result-object v1

    new-instance v2, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$1;

    invoke-direct {v2, p0, p1, p2}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$1;-><init>(Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;Landroid/widget/ImageView;Luk/co/senab/photoview/PhotoViewAttacher;)V

    .line 344
    invoke-virtual {v1, v2}, Lorg/inaturalist/android/GlideRequest;->listener(Lcom/bumptech/glide/request/RequestListener;)Lorg/inaturalist/android/GlideRequest;

    move-result-object v1

    .line 357
    invoke-virtual {v1, p1}, Lorg/inaturalist/android/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, p2

    goto/16 :goto_2

    :catch_0
    move-exception p1

    move-object v1, p2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 360
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 365
    :cond_0
    iget-object v4, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mImages:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_1

    .line 368
    iget p2, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mDefaultTaxonIcon:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 370
    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v1, 0x4

    .line 371
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    new-instance v1, Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-direct {v1, p1}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    .line 375
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/original"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    iget-object v4, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mImageThumbnails:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 383
    iget-object v4, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    .line 384
    invoke-virtual {v4, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    .line 388
    iget-object v4, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mActivity:Landroid/app/Activity;

    .line 389
    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    .line 390
    invoke-virtual {v4, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v4}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget v5, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mDefaultTaxonIcon:I

    .line 391
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 392
    invoke-virtual {v2, p2}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    goto :goto_1

    .line 394
    :cond_2
    new-instance p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget v4, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mDefaultTaxonIcon:I

    .line 395
    invoke-virtual {p2, v4}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 399
    :goto_1
    new-instance v2, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$2;

    invoke-direct {v2, p0, p1, v3, v1}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$2;-><init>(Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Luk/co/senab/photoview/PhotoViewAttacher;)V

    .line 418
    invoke-virtual {p2, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 423
    :goto_2
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    .line 424
    new-instance p1, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$3;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$3;-><init>(Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;)V

    invoke-virtual {v1, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    :cond_3
    if-eqz v1, :cond_4

    const/high16 p1, 0x40e00000    # 7.0f

    .line 432
    invoke-virtual {v1, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    .line 434
    new-instance p1, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$4;

    invoke-direct {p1, p0, v1}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$4;-><init>(Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;Luk/co/senab/photoview/PhotoViewAttacher;)V

    invoke-virtual {v1, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    :cond_4
    return-object v0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 213
    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setOnZoomListener(Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$OnZoomListener;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->mZoomListener:Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$OnZoomListener;

    return-void
.end method
