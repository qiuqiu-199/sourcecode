.class public Lcom/google/android/gms/vision/CameraSource;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/CameraSource$zzb;,
        Lcom/google/android/gms/vision/CameraSource$zza;,
        Lcom/google/android/gms/vision/CameraSource$zze;,
        Lcom/google/android/gms/vision/CameraSource$zzc;,
        Lcom/google/android/gms/vision/CameraSource$zzd;,
        Lcom/google/android/gms/vision/CameraSource$PictureCallback;,
        Lcom/google/android/gms/vision/CameraSource$ShutterCallback;,
        Lcom/google/android/gms/vision/CameraSource$Builder;
    }
.end annotation


# static fields
.field public static final CAMERA_FACING_BACK:I = 0x0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final CAMERA_FACING_FRONT:I = 0x1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzMA:I

.field private final zzbNM:Ljava/lang/Object;

.field private zzbNN:Landroid/hardware/Camera;

.field private zzbNO:I

.field private zzbNP:Lcom/google/android/gms/common/images/Size;

.field private zzbNQ:F

.field private zzbNR:I

.field private zzbNS:I

.field private zzbNT:Z

.field private zzbNU:Landroid/graphics/SurfaceTexture;

.field private zzbNV:Z

.field private zzbNW:Ljava/lang/Thread;

.field private zzbNX:Lcom/google/android/gms/vision/CameraSource$zzb;

.field private zzbNY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "[B",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNM:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNO:I

    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNQ:F

    const/16 v1, 0x400

    iput v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:I

    const/16 v1, 0x300

    iput v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNS:I

    iput-boolean v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNT:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNY:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/vision/CameraSource$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/vision/CameraSource;-><init>()V

    return-void
.end method

.method private zzTK()Landroid/hardware/Camera;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNO:I

    invoke-static {v0}, Lcom/google/android/gms/vision/CameraSource;->zznP(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:I

    iget v3, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNS:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/vision/CameraSource;->zza(Landroid/hardware/Camera;II)Lcom/google/android/gms/vision/CameraSource$zze;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/vision/CameraSource$zze;->zzTM()Lcom/google/android/gms/common/images/Size;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/vision/CameraSource$zze;->zzTL()Lcom/google/android/gms/common/images/Size;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNP:Lcom/google/android/gms/common/images/Size;

    iget v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNQ:F

    invoke-static {v1, v2}, Lcom/google/android/gms/vision/CameraSource;->zza(Landroid/hardware/Camera;F)[I

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNP:Lcom/google/android/gms/common/images/Size;

    invoke-virtual {v3}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNP:Lcom/google/android/gms/common/images/Size;

    invoke-virtual {v5}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v5, 0x1

    aget v2, v2, v5

    invoke-virtual {v4, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    const/16 v2, 0x11

    invoke-virtual {v4, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    invoke-direct {p0, v1, v4, v0}, Lcom/google/android/gms/vision/CameraSource;->zza(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;I)V

    iget-boolean v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNT:Z

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v2, "continuous-video"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "continuous-video"

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "CameraSource"

    const-string v2, "Camera auto focus is not supported on this device."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    new-instance v0, Lcom/google/android/gms/vision/CameraSource$zza;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/vision/CameraSource$zza;-><init>(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/CameraSource$1;)V

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNP:Lcom/google/android/gms/common/images/Size;

    invoke-direct {p0, v0}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNP:Lcom/google/android/gms/common/images/Size;

    invoke-direct {p0, v0}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNP:Lcom/google/android/gms/common/images/Size;

    invoke-direct {p0, v0}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNP:Lcom/google/android/gms/common/images/Size;

    invoke-direct {p0, v0}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find suitable preview frames per second range."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find suitable preview size."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find requested camera."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;F)F
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNQ:F

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/CameraSource$zzb;)Lcom/google/android/gms/vision/CameraSource$zzb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNX:Lcom/google/android/gms/vision/CameraSource$zzb;

    return-object p1
.end method

.method static zza(Landroid/hardware/Camera;II)Lcom/google/android/gms/vision/CameraSource$zze;
    .locals 5

    invoke-static {p0}, Lcom/google/android/gms/vision/CameraSource;->zza(Landroid/hardware/Camera;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const v1, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/vision/CameraSource$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/vision/CameraSource$zze;->zzTL()Lcom/google/android/gms/common/images/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v3

    sub-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v4, v3

    if-ge v4, v1, :cond_0

    move-object v0, v2

    move v1, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNM:Ljava/lang/Object;

    return-object p0
.end method

.method static zza(Landroid/hardware/Camera;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/vision/CameraSource$zze;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v4, v4

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-float v7, v7

    iget v8, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-float v7, v4, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3c23d70a    # 0.01f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    new-instance v4, Lcom/google/android/gms/vision/CameraSource$zze;

    invoke-direct {v4, v3, v6}, Lcom/google/android/gms/vision/CameraSource$zze;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "CameraSource"

    const-string v2, "No preview sizes have a corresponding same-aspect-ratio picture size"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    new-instance v2, Lcom/google/android/gms/vision/CameraSource$zze;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/vision/CameraSource$zze;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private zza(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;I)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v2, "CameraSource"

    const/16 v3, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Bad rotation value: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x10e

    goto :goto_0

    :pswitch_1
    const/16 v1, 0xb4

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x5a

    :goto_0
    :pswitch_3
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {p3, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget p3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    iget p3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p3, v1

    rem-int/lit16 p3, p3, 0x168

    rsub-int v0, p3, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    :cond_0
    iget p3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p3, v1

    add-int/lit16 p3, p3, 0x168

    rem-int/lit16 p3, p3, 0x168

    move v0, p3

    :goto_1
    div-int/lit8 v1, p3, 0x5a

    iput v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzMA:I

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    invoke-virtual {p2, p3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNT:Z

    return p1
.end method

.method private zza(Lcom/google/android/gms/common/images/Size;)[B
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x11

    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result p1

    mul-int v1, v1, p1

    mul-int v1, v1, v0

    int-to-long v0, v1

    long-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNY:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to create valid buffer for camera source."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static zza(Landroid/hardware/Camera;F)[I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const v1, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    aget v3, v2, v3

    sub-int v3, p1, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    sub-int v4, p1, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_0

    move-object v0, v2

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/vision/CameraSource;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNS:I

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/vision/CameraSource;)Landroid/hardware/Camera;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNN:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/vision/CameraSource;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNO:I

    return p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/vision/CameraSource;)Lcom/google/android/gms/vision/CameraSource$zzb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNX:Lcom/google/android/gms/vision/CameraSource$zzb;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/vision/CameraSource;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNW:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/vision/CameraSource;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNY:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/vision/CameraSource;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/vision/CameraSource;->zzMA:I

    return p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/vision/CameraSource;)Lcom/google/android/gms/common/images/Size;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNP:Lcom/google/android/gms/common/images/Size;

    return-object p0
.end method

.method private static zznP(I)I
    .locals 3

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, p0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public getCameraFacing()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNO:I

    return v0
.end method

.method public getPreviewSize()Lcom/google/android/gms/common/images/Size;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNP:Lcom/google/android/gms/common/images/Size;

    return-object v0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNM:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/vision/CameraSource;->stop()V

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNX:Lcom/google/android/gms/vision/CameraSource$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/vision/CameraSource$zzb;->release()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()Lcom/google/android/gms/vision/CameraSource;
    .locals 4
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.CAMERA"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNM:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNN:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/vision/CameraSource;->zzTK()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNN:Landroid/hardware/Camera;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Landroid/graphics/SurfaceTexture;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNU:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNN:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNU:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNV:Z

    iget-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNN:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNX:Lcom/google/android/gms/vision/CameraSource$zzb;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNW:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNX:Lcom/google/android/gms/vision/CameraSource$zzb;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/vision/CameraSource$zzb;->setActive(Z)V

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNW:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start(Landroid/view/SurfaceHolder;)Lcom/google/android/gms/vision/CameraSource;
    .locals 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.CAMERA"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNM:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNN:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/vision/CameraSource;->zzTK()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNN:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNN:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNN:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    new-instance p1, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNX:Lcom/google/android/gms/vision/CameraSource$zzb;

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNW:Ljava/lang/Thread;

    iget-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNX:Lcom/google/android/gms/vision/CameraSource$zzb;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/vision/CameraSource$zzb;->setActive(Z)V

    iget-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNW:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNV:Z

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stop()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNM:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNX:Lcom/google/android/gms/vision/CameraSource$zzb;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/CameraSource$zzb;->setActive(Z)V

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNW:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNW:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "CameraSource"

    const-string v3, "Frame processing thread interrupted on release."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNW:Ljava/lang/Thread;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNN:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNN:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNN:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNV:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNN:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNN:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string v3, "CameraSource"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to clear camera preview: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNN:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    iput-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNN:Landroid/hardware/Camera;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNY:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public takePicture(Lcom/google/android/gms/vision/CameraSource$ShutterCallback;Lcom/google/android/gms/vision/CameraSource$PictureCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNM:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNN:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/vision/CameraSource$zzd;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/vision/CameraSource$zzd;-><init>(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/CameraSource$1;)V

    invoke-static {v1, p1}, Lcom/google/android/gms/vision/CameraSource$zzd;->zza(Lcom/google/android/gms/vision/CameraSource$zzd;Lcom/google/android/gms/vision/CameraSource$ShutterCallback;)Lcom/google/android/gms/vision/CameraSource$ShutterCallback;

    new-instance p1, Lcom/google/android/gms/vision/CameraSource$zzc;

    invoke-direct {p1, p0, v2}, Lcom/google/android/gms/vision/CameraSource$zzc;-><init>(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/CameraSource$1;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/vision/CameraSource$zzc;->zza(Lcom/google/android/gms/vision/CameraSource$zzc;Lcom/google/android/gms/vision/CameraSource$PictureCallback;)Lcom/google/android/gms/vision/CameraSource$PictureCallback;

    iget-object p2, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNN:Landroid/hardware/Camera;

    invoke-virtual {p2, v1, v2, v2, p1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
