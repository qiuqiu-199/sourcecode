.class public Lorg/inaturalist/android/UTFPosition;
.super Ljava/lang/Object;
.source "UTFPosition.java"


# static fields
.field private static final TILE_SIZE:I = 0x100


# instance fields
.field private mPixelPositionX:I

.field private mPixelPositionY:I

.field private mTilePositionX:I

.field private mTilePositionY:I


# direct methods
.method public constructor <init>(FDD)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v0, p1

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p1, v0

    .line 35
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/inaturalist/android/UTFPosition;->project(DD)[D

    move-result-object p2

    const/4 p3, 0x0

    .line 36
    aget-wide p4, p2, p3

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p4, p4, v0

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    div-double/2addr p4, v2

    invoke-static {p4, p5}, Ljava/lang/Math;->floor(D)D

    move-result-wide p4

    double-to-int p1, p4

    iput p1, p0, Lorg/inaturalist/android/UTFPosition;->mTilePositionX:I

    const/4 p1, 0x1

    .line 37
    aget-wide p4, p2, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p4, p4, v0

    div-double/2addr p4, v2

    invoke-static {p4, p5}, Ljava/lang/Math;->floor(D)D

    move-result-wide p4

    double-to-int p4, p4

    iput p4, p0, Lorg/inaturalist/android/UTFPosition;->mTilePositionY:I

    const/4 p4, 0x2

    .line 39
    new-array p4, p4, [D

    aget-wide v2, p2, p3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    aput-wide v2, p4, p3

    aget-wide v2, p2, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    aput-wide v2, p4, p1

    .line 44
    aget-wide p2, p4, p3

    iget p5, p0, Lorg/inaturalist/android/UTFPosition;->mTilePositionX:I

    mul-int/lit16 p5, p5, 0x100

    int-to-double v0, p5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p2, v0

    double-to-int p2, p2

    iput p2, p0, Lorg/inaturalist/android/UTFPosition;->mPixelPositionX:I

    .line 45
    aget-wide p1, p4, p1

    iget p3, p0, Lorg/inaturalist/android/UTFPosition;->mTilePositionY:I

    mul-int/lit16 p3, p3, 0x100

    int-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, p3

    double-to-int p1, p1

    iput p1, p0, Lorg/inaturalist/android/UTFPosition;->mPixelPositionY:I

    return-void
.end method

.method private project(DD)[D
    .locals 7

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p1, p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v0

    .line 50
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    const-wide v0, -0x401000d1b71758e2L    # -0.9999

    .line 54
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    const-wide v0, 0x3fefff2e48e8a71eL    # 0.9999

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const/4 v0, 0x2

    .line 56
    new-array v0, v0, [D

    const-wide v1, 0x4076800000000000L    # 360.0

    div-double/2addr p3, v1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double/2addr p3, v1

    const-wide/high16 v3, 0x4070000000000000L    # 256.0

    mul-double p3, p3, v3

    const/4 v5, 0x0

    aput-wide p3, v0, v5

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    add-double v5, p1, p3

    sub-double/2addr p3, p1

    div-double/2addr v5, p3

    .line 58
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    const-wide p3, 0x402921fb54442d18L    # 12.566370614359172

    div-double/2addr p1, p3

    sub-double/2addr v1, p1

    mul-double v1, v1, v3

    const/4 p1, 0x1

    aput-wide v1, v0, p1

    return-object v0
.end method


# virtual methods
.method public getPixelPositionX()I
    .locals 1

    .line 25
    iget v0, p0, Lorg/inaturalist/android/UTFPosition;->mPixelPositionX:I

    return v0
.end method

.method public getPixelPositionY()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/inaturalist/android/UTFPosition;->mPixelPositionY:I

    return v0
.end method

.method public getTilePositionX()I
    .locals 1

    .line 17
    iget v0, p0, Lorg/inaturalist/android/UTFPosition;->mTilePositionX:I

    return v0
.end method

.method public getTilePositionY()I
    .locals 1

    .line 20
    iget v0, p0, Lorg/inaturalist/android/UTFPosition;->mTilePositionY:I

    return v0
.end method
