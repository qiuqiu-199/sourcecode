.class public Lorg/inaturalist/android/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final BLUR_RADIUS:F = 25.0f

.field private static final TAG:Ljava/lang/String; = "ImageUtils"

.field private static sMaxBitmapHeight:I

.field private static sMaxBitmapWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_0
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object p0

    .line 70
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object p1

    .line 71
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    .line 74
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    move-result-object p0

    const/high16 v2, 0x41c80000    # 25.0f

    .line 75
    invoke-virtual {p0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 76
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    .line 77
    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    .line 78
    invoke-virtual {v1, v0}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .line 253
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 254
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_0

    if-le p0, p1, :cond_1

    .line 259
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 260
    div-int/lit8 p0, p0, 0x2

    .line 264
    :goto_0
    div-int v2, v0, v1

    if-le v2, p2, :cond_1

    div-int v2, p0, v1

    if-le v2, p1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, v1, 0x4

    return v1
.end method

.method public static centerCropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 90
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 92
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 94
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    .line 97
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 99
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 100
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 95
    invoke-static {p0, v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 107
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 108
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 103
    invoke-static {p0, v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static copyExifData(Ljava/io/InputStream;Ljava/io/File;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lorg/apache/sanselan/formats/tiff/constants/TagInfo;",
            ">;)Z"
        }
    .end annotation

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 457
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/sanselan/ImageReadException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/apache/sanselan/ImageWriteException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x49

    .line 459
    :try_start_1
    invoke-static {p0, v0}, Lorg/inaturalist/android/ImageUtils;->getSanselanOutputSet(Ljava/io/InputStream;I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;

    move-result-object p0
    :try_end_1
    .catch Lorg/apache/sanselan/ImageReadException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/apache/sanselan/ImageWriteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez p0, :cond_1

    .line 532
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    return v2

    .line 461
    :cond_1
    :try_start_2
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->byteOrder:I

    invoke-static {p1, v0}, Lorg/inaturalist/android/ImageUtils;->getSanselanOutputSet(Ljava/io/File;I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;

    move-result-object v0
    :try_end_2
    .catch Lorg/apache/sanselan/ImageReadException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/apache/sanselan/ImageWriteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v0, :cond_3

    .line 532
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    return v2

    .line 470
    :cond_3
    :try_start_3
    iget v4, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->byteOrder:I

    iget v5, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->byteOrder:I
    :try_end_3
    .catch Lorg/apache/sanselan/ImageReadException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/apache/sanselan/ImageWriteException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eq v4, v5, :cond_5

    .line 532
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_4
    return v2

    .line 472
    :cond_5
    :try_start_4
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->getOrCreateExifDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .line 475
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->getDirectories()Ljava/util/List;

    move-result-object p0

    const/4 v4, 0x0

    .line 476
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 477
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .line 478
    invoke-static {v0, v5}, Lorg/inaturalist/android/ImageUtils;->getOrCreateExifDirectory(Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;)Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_3

    .line 483
    :cond_6
    invoke-virtual {v5}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->getFields()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    .line 484
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 486
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    if-eqz p2, :cond_7

    .line 489
    iget-object v9, v8, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-interface {p2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 490
    iget-object v8, v8, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v6, v8}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)V

    goto :goto_2

    .line 495
    :cond_7
    iget-object v9, v8, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v6, v9}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)V

    .line 498
    invoke-virtual {v6, v8}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 503
    :cond_9
    new-instance p0, Ljava/io/BufferedOutputStream;

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Lorg/apache/sanselan/ImageReadException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/apache/sanselan/ImageWriteException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 504
    :try_start_5
    new-instance p2, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;

    invoke-direct {p2}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;-><init>()V

    invoke-virtual {p2, p1, p0, v0}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->updateExifMetadataLossless(Ljava/io/File;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    .line 505
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 508
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 509
    invoke-virtual {v3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_5
    .catch Lorg/apache/sanselan/ImageReadException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/sanselan/ImageWriteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 526
    :cond_a
    :try_start_6
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 532
    :catch_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_b
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto/16 :goto_b

    :catch_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_6

    :catch_3
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_8

    :catch_4
    move-exception p0

    goto :goto_4

    :catch_5
    move-exception p0

    goto :goto_6

    :catch_6
    move-exception p0

    goto :goto_8

    :catchall_1
    move-exception p0

    move-object v3, v1

    goto :goto_b

    :catch_7
    move-exception p0

    move-object v3, v1

    .line 521
    :goto_4
    :try_start_7
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_c

    .line 526
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_5

    :catch_8
    nop

    :cond_c
    :goto_5
    if-eqz v3, :cond_f

    .line 532
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_a

    :catch_9
    move-exception p0

    move-object v3, v1

    .line 518
    :goto_6
    :try_start_9
    invoke-virtual {p0}, Lorg/apache/sanselan/ImageWriteException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v1, :cond_d

    .line 526
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_7

    :catch_a
    nop

    :cond_d
    :goto_7
    if-eqz v3, :cond_f

    .line 532
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_a

    :catch_b
    move-exception p0

    move-object v3, v1

    .line 515
    :goto_8
    :try_start_b
    invoke-virtual {p0}, Lorg/apache/sanselan/ImageReadException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v1, :cond_e

    .line 526
    :try_start_c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_9

    :catch_c
    nop

    :cond_e
    :goto_9
    if-eqz v3, :cond_f

    .line 532
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_f

    :goto_a
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_f
    return v2

    :catchall_2
    move-exception p0

    :goto_b
    if-eqz v1, :cond_10

    .line 526
    :try_start_d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_c

    :catch_d
    nop

    :cond_10
    :goto_c
    if-eqz v3, :cond_11

    .line 532
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_11
    throw p0
.end method

.method public static decodeSampledBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 274
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 275
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 277
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    invoke-static {v0, p2, p3}, Lorg/inaturalist/android/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 287
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 289
    sget-object p2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object p2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 291
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 293
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception p0

    .line 279
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v1
.end method

.method private static exifOrientationToDegrees(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, -0x5a

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0xb4

    return p0
.end method

.method public static getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 120
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 125
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 126
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    .line 128
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/high16 v5, -0x10000

    .line 130
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 133
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 134
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static getImageOrientation(Ljava/lang/String;)I
    .locals 2

    .line 302
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v1, 0x1

    .line 303
    invoke-virtual {v0, p0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lorg/inaturalist/android/ImageUtils;->exifOrientationToDegrees(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 306
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private static getMaxDimensions()V
    .locals 12

    .line 172
    sget v0, Lorg/inaturalist/android/ImageUtils;->sMaxBitmapHeight:I

    if-lez v0, :cond_0

    sget v0, Lorg/inaturalist/android/ImageUtils;->sMaxBitmapWidth:I

    if-lez v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 179
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    const/4 v2, 0x2

    .line 182
    new-array v2, v2, [I

    .line 183
    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v2, 0x1

    .line 186
    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 187
    invoke-interface {v0, v1, v4, v5, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 190
    aget v4, v3, v5

    new-array v4, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 191
    aget v6, v3, v5

    invoke-interface {v0, v1, v4, v6, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 193
    new-array v6, v2, [I

    .line 194
    new-array v2, v2, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 198
    :goto_0
    aget v10, v3, v5

    if-ge v7, v10, :cond_3

    .line 199
    aget-object v10, v4, v7

    const/16 v11, 0x302c

    invoke-interface {v0, v1, v10, v11, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 200
    aget-object v10, v4, v7

    const/16 v11, 0x302a

    invoke-interface {v0, v1, v10, v11, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 203
    aget v10, v6, v5

    if-ge v8, v10, :cond_1

    .line 204
    aget v8, v6, v5

    .line 205
    :cond_1
    aget v10, v2, v5

    if-ge v9, v10, :cond_2

    .line 206
    aget v9, v2, v5

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 210
    :cond_3
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    const/16 v0, 0x800

    .line 213
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lorg/inaturalist/android/ImageUtils;->sMaxBitmapWidth:I

    .line 214
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lorg/inaturalist/android/ImageUtils;->sMaxBitmapHeight:I

    return-void
.end method

.method private static getOrCreateExifDirectory(Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;)Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .locals 1

    .line 540
    iget v0, p1, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 543
    :cond_0
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    iget p1, p1, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-direct {v0, p1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;-><init>(I)V

    .line 545
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;)V
    :try_end_0
    .catch Lorg/apache/sanselan/ImageWriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    const/high16 v0, 0x40c00000    # 6.0f

    .line 140
    invoke-static {p0, v0}, Lorg/inaturalist/android/ImageUtils;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 145
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 144
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 149
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 150
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 151
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    .line 154
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 155
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v5, -0xbdbdbe

    .line 156
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    invoke-virtual {v1, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 159
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 160
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private static getSanselanOutputSet(Ljava/io/File;I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageReadException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 587
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getMetadata(Ljava/io/File;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object p0

    .line 588
    check-cast p0, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 590
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->getExif()Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 593
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;->getOutputSet()Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 601
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;->contents:Lorg/apache/sanselan/formats/tiff/TiffContents;

    iget-object p0, p0, Lorg/apache/sanselan/formats/tiff/TiffContents;->header:Lorg/apache/sanselan/formats/tiff/TiffHeader;

    iget p1, p0, Lorg/apache/sanselan/formats/tiff/TiffHeader;->byteOrder:I

    :goto_1
    invoke-direct {v0, p1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;-><init>(I)V

    :cond_3
    return-object v0
.end method

.method private static getSanselanOutputSet(Ljava/io/InputStream;I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageReadException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 558
    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getMetadata(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object p0

    .line 559
    instance-of v1, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;

    if-nez v1, :cond_0

    return-object v0

    .line 564
    :cond_0
    check-cast p0, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;

    if-eqz p0, :cond_1

    .line 566
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->getExif()Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 569
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;->getOutputSet()Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 577
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;->contents:Lorg/apache/sanselan/formats/tiff/TiffContents;

    iget-object p0, p0, Lorg/apache/sanselan/formats/tiff/TiffContents;->header:Lorg/apache/sanselan/formats/tiff/TiffHeader;

    iget p1, p0, Lorg/apache/sanselan/formats/tiff/TiffHeader;->byteOrder:I

    :goto_1
    invoke-direct {v0, p1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;-><init>(I)V

    :cond_4
    return-object v0
.end method

.method public static resizeImage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move/from16 v2, p3

    .line 348
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-nez v1, :cond_0

    .line 352
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_7

    .line 354
    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v5, 0x1

    .line 358
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v6, 0x0

    .line 359
    invoke-static {v4, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 360
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 361
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 365
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    if-nez v1, :cond_1

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    goto :goto_1

    .line 370
    :cond_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 374
    :goto_1
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-ge v9, v2, :cond_3

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    move v12, v7

    move v11, v8

    goto :goto_2

    :cond_3
    if-le v7, v8, :cond_4

    int-to-float v9, v2

    int-to-float v10, v8

    int-to-float v11, v7

    div-float/2addr v10, v11

    mul-float v9, v9, v10

    float-to-int v9, v9

    move v12, v2

    move v11, v9

    goto :goto_2

    :cond_4
    int-to-float v9, v2

    int-to-float v10, v7

    int-to-float v11, v8

    div-float/2addr v10, v11

    mul-float v9, v9, v10

    float-to-int v9, v9

    move v11, v2

    move v12, v9

    :goto_2
    const-string v2, "ImageUtils"

    .line 394
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bitmap h:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "; w:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ImageUtils"

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resized Bitmap h:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "; w:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-ne v12, v7, :cond_5

    if-eq v11, v8, :cond_7

    .line 400
    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_6

    .line 403
    sget-object v13, Lcom/schokoladenbrown/Smooth$AlgoParametrized1;->LANCZOS:Lcom/schokoladenbrown/Smooth$AlgoParametrized1;

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v10 .. v15}, Lcom/schokoladenbrown/Smooth;->rescale(Landroid/graphics/Bitmap;IILcom/schokoladenbrown/Smooth$AlgoParametrized1;D)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_3

    .line 407
    :cond_6
    invoke-static {v10, v11, v12, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 412
    :cond_7
    :goto_3
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".jpeg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 413
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 414
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v10, v7, v8, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 415
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 416
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    const-string v3, "ImageUtils"

    const-string v7, "resizeImage: %s => %s"

    const/4 v8, 0x2

    .line 418
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 423
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    if-nez v1, :cond_8

    .line 426
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4

    .line 428
    :cond_8
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 432
    :goto_4
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v6}, Lorg/inaturalist/android/ImageUtils;->copyExifData(Ljava/io/InputStream;Ljava/io/File;Ljava/util/List;)Z

    .line 434
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 436
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 443
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 441
    :goto_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_8

    .line 439
    :goto_7
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :goto_8
    return-object v1
.end method

.method public static rotateAccordingToOrientation(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .line 327
    invoke-static {p1}, Lorg/inaturalist/android/ImageUtils;->getImageOrientation(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 331
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 332
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v5, p1, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 333
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static scaleDownBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 4

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    if-eqz p3, :cond_0

    int-to-float p2, p2

    mul-float p2, p2, p0

    float-to-int p0, p2

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    mul-int p2, p2, p0

    int-to-double p2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v0, v0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v0

    double-to-int p2, p2

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    mul-float p2, p2, p0

    float-to-int p2, p2

    .line 243
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    mul-int p0, p0, p2

    int-to-double v0, p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-double v2, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-int p0, v0

    :goto_0
    const/4 p3, 0x1

    .line 246
    invoke-static {p1, p2, p0, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static scaleDownBitmapIfNeeded(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 221
    invoke-static {}, Lorg/inaturalist/android/ImageUtils;->getMaxDimensions()V

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget v1, Lorg/inaturalist/android/ImageUtils;->sMaxBitmapHeight:I

    if-le v0, v1, :cond_0

    .line 224
    sget v0, Lorg/inaturalist/android/ImageUtils;->sMaxBitmapHeight:I

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/inaturalist/android/ImageUtils;->scaleDownBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 225
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v1, Lorg/inaturalist/android/ImageUtils;->sMaxBitmapWidth:I

    if-le v0, v1, :cond_1

    .line 226
    sget v0, Lorg/inaturalist/android/ImageUtils;->sMaxBitmapWidth:I

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/inaturalist/android/ImageUtils;->scaleDownBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method
