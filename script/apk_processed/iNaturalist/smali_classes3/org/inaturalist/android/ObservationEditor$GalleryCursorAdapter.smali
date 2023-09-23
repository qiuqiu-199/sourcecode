.class public Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "ObservationEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GalleryCursorAdapter"
.end annotation


# static fields
.field private static final MIN_SAMPLE_SIZE_COMPRESSION:I = 0x8

.field private static final PHOTO_DIMENSIONS:I = 0xc8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/inaturalist/android/ObservationEditor;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/ObservationEditor;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .line 2783
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2784
    iput-object p2, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mContext:Landroid/content/Context;

    .line 2785
    iput-object p3, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 2786
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mViews:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 2790
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .line 2780
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 2794
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2795
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 2799
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2800
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    const-string v1, "id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemIdString(I)Ljava/lang/String;
    .locals 2

    .line 2804
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2805
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    const-string v1, "photo_filename"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2807
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    const-string v1, "photo_url"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 2860
    iget-object v0, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mViews:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2861
    iget-object v0, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mViews:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 2864
    :cond_0
    iget-object v0, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2866
    iget-object v0, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Lorg/inaturalist/android/ObservationEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f0d00a7

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2870
    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    const v0, 0x7f0a0264

    .line 2871
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    .line 2873
    iget-object v0, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v7, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 2874
    iget-object v0, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v7, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    const-string v8, "photo_url"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2875
    iget-object v7, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v8, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    const-string v9, "photo_filename"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    if-eqz v0, :cond_1

    .line 2879
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v7}, Lorg/inaturalist/android/ObservationEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0700eb

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iget-object v10, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v10}, Lorg/inaturalist/android/ObservationEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    invoke-direct {v4, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2880
    new-instance v4, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$1;

    invoke-direct {v4, v1}, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$1;-><init>(Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;)V

    invoke-static {v6, v0, v4}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    goto :goto_0

    .line 2892
    :cond_1
    invoke-static {v7}, Lorg/inaturalist/android/ImageUtils;->getImageOrientation(Ljava/lang/String;)I

    move-result v0

    .line 2897
    :try_start_0
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2898
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    .line 2900
    iput-boolean v11, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2901
    invoke-static {v10, v4, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2902
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    const/16 v4, 0xc8

    .line 2905
    invoke-static {v9, v4, v4}, Lorg/inaturalist/android/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2908
    iput-boolean v5, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2910
    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v4, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2911
    invoke-static {v7, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_3

    if-eqz v0, :cond_2

    .line 2916
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v0

    .line 2917
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v15, v0, v4, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 2918
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    :cond_2
    if-eqz v10, :cond_3

    .line 2922
    invoke-static {v10}, Lorg/inaturalist/android/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2923
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2929
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2927
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_3
    :goto_0
    const v0, 0x7f0a0263

    .line 2933
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2934
    iget-object v4, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v7, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    const-string v9, "position"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const v4, 0x7f0a019e

    const v7, 0x7f0a019c

    const v9, 0x7f0a019d

    if-nez v2, :cond_4

    .line 2937
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2938
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2939
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2941
    :cond_4
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2942
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2943
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2946
    :goto_1
    new-instance v4, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$2;

    invoke-direct {v4, v1, v2}, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$2;-><init>(Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;I)V

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2960
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2961
    new-instance v4, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$3;

    invoke-direct {v4, v1}, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$3;-><init>(Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2975
    iget-object v0, v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mViews:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public refreshPhotoPositions(Ljava/lang/Integer;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2837
    :goto_0
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 2841
    :cond_1
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_2
    if-eqz p1, :cond_3

    .line 2844
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 2845
    :cond_3
    new-instance v0, Lorg/inaturalist/android/ObservationPhoto;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, v2}, Lorg/inaturalist/android/ObservationPhoto;-><init>(Landroid/database/Cursor;)V

    .line 2846
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    .line 2847
    iget-object v2, v0, Lorg/inaturalist/android/ObservationPhoto;->photo_filename:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 2848
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v2}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationPhoto;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "photo_filename = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationPhoto;->photo_filename:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v5, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2850
    :cond_4
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v2}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationPhoto;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "photo_url = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v5, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 2855
    :cond_5
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void
.end method

.method public setAsFirstPhoto(I)V
    .locals 7

    .line 2814
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/inaturalist/android/ObservationEditor;->mPhotosChanged:Z

    .line 2816
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->getItemIdString(I)Ljava/lang/String;

    move-result-object v0

    .line 2817
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iput-object v0, v1, Lorg/inaturalist/android/ObservationEditor;->mFirstPositionPhotoId:Ljava/lang/String;

    .line 2820
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2821
    new-instance v0, Lorg/inaturalist/android/ObservationPhoto;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lorg/inaturalist/android/ObservationPhoto;-><init>(Landroid/database/Cursor;)V

    const/4 v1, 0x0

    .line 2822
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    .line 2823
    iget-object v1, v0, Lorg/inaturalist/android/ObservationPhoto;->photo_filename:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2824
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationPhoto;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "photo_filename = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationPhoto;->photo_filename:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2826
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationPhoto;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "photo_url = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2830
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->refreshPhotoPositions(Ljava/lang/Integer;)V

    .line 2832
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {p1}, Lorg/inaturalist/android/ObservationEditor;->updateImages()V

    return-void
.end method
