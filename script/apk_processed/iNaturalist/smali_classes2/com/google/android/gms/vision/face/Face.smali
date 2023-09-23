.class public Lcom/google/android/gms/vision/face/Face;
.super Ljava/lang/Object;


# static fields
.field public static final UNCOMPUTED_PROBABILITY:F = -1.0f


# instance fields
.field private mId:I

.field private zzbOH:Landroid/graphics/PointF;

.field private zzbOI:F

.field private zzbOJ:F

.field private zzbOK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/vision/face/Landmark;",
            ">;"
        }
    .end annotation
.end field

.field private zzbOL:F

.field private zzbOM:F

.field private zzbON:F

.field private zzbpp:F

.field private zzbpq:F


# direct methods
.method public constructor <init>(ILandroid/graphics/PointF;FFFF[Lcom/google/android/gms/vision/face/Landmark;FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/face/Face;->mId:I

    iput-object p2, p0, Lcom/google/android/gms/vision/face/Face;->zzbOH:Landroid/graphics/PointF;

    iput p3, p0, Lcom/google/android/gms/vision/face/Face;->zzbpp:F

    iput p4, p0, Lcom/google/android/gms/vision/face/Face;->zzbpq:F

    iput p5, p0, Lcom/google/android/gms/vision/face/Face;->zzbOI:F

    iput p6, p0, Lcom/google/android/gms/vision/face/Face;->zzbOJ:F

    invoke-static {p7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/vision/face/Face;->zzbOK:Ljava/util/List;

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    cmpl-float p4, p8, p3

    if-ltz p4, :cond_0

    cmpg-float p4, p8, p2

    if-gtz p4, :cond_0

    iput p8, p0, Lcom/google/android/gms/vision/face/Face;->zzbOL:F

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/vision/face/Face;->zzbOL:F

    :goto_0
    cmpl-float p4, p9, p3

    if-ltz p4, :cond_1

    cmpg-float p4, p9, p2

    if-gtz p4, :cond_1

    iput p9, p0, Lcom/google/android/gms/vision/face/Face;->zzbOM:F

    goto :goto_1

    :cond_1
    iput p1, p0, Lcom/google/android/gms/vision/face/Face;->zzbOM:F

    :goto_1
    cmpl-float p3, p10, p3

    if-ltz p3, :cond_2

    cmpg-float p2, p10, p2

    if-gtz p2, :cond_2

    iput p10, p0, Lcom/google/android/gms/vision/face/Face;->zzbON:F

    goto :goto_2

    :cond_2
    iput p1, p0, Lcom/google/android/gms/vision/face/Face;->zzbON:F

    :goto_2
    return-void
.end method


# virtual methods
.method public getEulerY()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzbOI:F

    return v0
.end method

.method public getEulerZ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzbOJ:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzbpq:F

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->mId:I

    return v0
.end method

.method public getIsLeftEyeOpenProbability()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzbOL:F

    return v0
.end method

.method public getIsRightEyeOpenProbability()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzbOM:F

    return v0
.end method

.method public getIsSmilingProbability()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzbON:F

    return v0
.end method

.method public getLandmarks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/vision/face/Landmark;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/vision/face/Face;->zzbOK:Ljava/util/List;

    return-object v0
.end method

.method public getPosition()Landroid/graphics/PointF;
    .locals 5

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/android/gms/vision/face/Face;->zzbOH:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/google/android/gms/vision/face/Face;->zzbpp:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/gms/vision/face/Face;->zzbOH:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/google/android/gms/vision/face/Face;->zzbpq:F

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzbpp:F

    return v0
.end method
