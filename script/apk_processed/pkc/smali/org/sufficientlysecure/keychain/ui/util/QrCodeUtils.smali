.class public Lorg/sufficientlysecure/keychain/ui/util/QrCodeUtils;
.super Ljava/lang/Object;
.source "QrCodeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 40
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/util/QrCodeUtils;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getQRCodeBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4

    move-object/16 v1, p0

    .line 43
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/ui/util/QrCodeUtils;->getQRCodeBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/util/QrCodeUtils;--->getQRCodeBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getQRCodeBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 49
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/QrCodeUtils;->getQRCodeBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/QrCodeUtils;--->getQRCodeBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getQRCodeBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 12

    move-object/16 v9, p0

    move/16 v10, p1

    const/4 v0, 0x0

    .line 62
    :try_start_0
    sget-object v1, Lorg/sufficientlysecure/keychain/KeychainApplication;->qrCodeCache:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 65
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 66
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v7, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v2, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v2}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v3, v9

    move v5, v10

    move v6, v10

    invoke-virtual/range {v2 .. v7}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v10

    .line 70
    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    .line 71
    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 72
    new-array v2, v1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_2

    mul-int v3, v1, v7

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_1

    add-int v5, v3, v4

    .line 77
    invoke-virtual {v10, v4, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    const/high16 v6, -0x1000000

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_2
    aput v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_2
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    move v4, v7

    .line 82
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 84
    sget-object v1, Lorg/sufficientlysecure/keychain/KeychainApplication;->qrCodeCache:Ljava/util/HashMap;

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_3
    move-object v10, v1

    :goto_3
    return-object v10

    :catch_0
    move-exception v9

    const-string v10, "QrCodeUtils"

    .line 89
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v10, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v9, 0x0

    return-object v9

    const-string v11, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/QrCodeUtils;--->getQRCodeBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
