.class public Ljp/wasabeef/picasso/transformations/CropTransformation;
.super Ljava/lang/Object;
.source "CropTransformation.java"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;,
        Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PicassoTransformation"


# instance fields
.field private mAspectRatio:F

.field private mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

.field private mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

.field private mHeight:I

.field private mHeightRatio:F

.field private mLeft:I

.field private mTop:I

.field private mWidth:I

.field private mWidthRatio:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    .line 149
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    sget-object v1, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    invoke-direct {p0, p1, p2, v0, v1}, Ljp/wasabeef/picasso/transformations/CropTransformation;-><init>(FFLjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V

    return-void
.end method

.method public constructor <init>(FFFLjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V
    .locals 1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 66
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 202
    iput p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidthRatio:F

    .line 203
    iput p2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeightRatio:F

    .line 204
    iput p3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    .line 205
    iput-object p4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 206
    iput-object p5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    return-void
.end method

.method public constructor <init>(FFLjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 66
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 129
    iput p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidthRatio:F

    .line 130
    iput p2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeightRatio:F

    .line 131
    iput-object p3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 132
    iput-object p4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    return-void
.end method

.method public constructor <init>(FLjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V
    .locals 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 66
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 220
    iput p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    .line 221
    iput-object p2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 222
    iput-object p3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 109
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    sget-object v1, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    invoke-direct {p0, p1, p2, v0, v1}, Ljp/wasabeef/picasso/transformations/CropTransformation;-><init>(IILjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V

    return-void
.end method

.method public constructor <init>(IIFLjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 66
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 170
    iput p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    .line 171
    iput p2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    .line 172
    iput p3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    .line 173
    iput-object p4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 174
    iput-object p5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 66
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 78
    iput p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mLeft:I

    .line 79
    iput p2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mTop:I

    .line 80
    iput p3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    .line 81
    iput p4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    return-void
.end method

.method public constructor <init>(IILjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 66
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 95
    iput p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    .line 96
    iput p2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    .line 97
    iput-object p3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 98
    iput-object p4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    return-void
.end method

.method private getLeft(Landroid/graphics/Bitmap;)I
    .locals 2

    .line 339
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$1;->$SwitchMap$jp$wasabeef$picasso$transformations$CropTransformation$GravityHorizontal:[I

    iget-object v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    invoke-virtual {v1}, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    .line 345
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    sub-int/2addr p1, v0

    return p1

    .line 343
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    return p1

    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTop(Landroid/graphics/Bitmap;)I
    .locals 2

    .line 326
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$1;->$SwitchMap$jp$wasabeef$picasso$transformations$CropTransformation$GravityVertical:[I

    iget-object v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    invoke-virtual {v1}, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    .line 332
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    sub-int/2addr p1, v0

    return p1

    .line 330
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    return p1

    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 2

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CropTransformation(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWidthRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidthRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mHeightRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeightRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", gravityHorizontal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mGravityVertical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "PicassoTransformation"

    const/4 v1, 0x2

    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PicassoTransformation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transform(): called, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljp/wasabeef/picasso/transformations/CropTransformation;->key()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidthRatio:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidthRatio:F

    mul-float v0, v0, v3

    float-to-int v0, v0

    iput v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    .line 231
    :cond_1
    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    if-nez v0, :cond_2

    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeightRatio:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeightRatio:F

    mul-float v0, v0, v3

    float-to-int v0, v0

    iput v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    .line 235
    :cond_2
    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_9

    .line 236
    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    if-nez v0, :cond_5

    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    if-nez v0, :cond_5

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const-string v2, "PicassoTransformation"

    .line 239
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "PicassoTransformation"

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transform(): mAspectRatio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", sourceRatio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_3
    iget v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    goto :goto_0

    .line 249
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    :cond_5
    :goto_0
    const-string v0, "PicassoTransformation"

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "PicassoTransformation"

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transform(): before setting other of h/w: mAspectRatio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", set one of width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_6
    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    if-eqz v0, :cond_7

    .line 259
    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    int-to-float v0, v0

    iget v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    goto :goto_1

    .line 261
    :cond_7
    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    if-eqz v0, :cond_8

    .line 262
    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    int-to-float v0, v0

    iget v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    :cond_8
    :goto_1
    const-string v0, "PicassoTransformation"

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "PicassoTransformation"

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transform(): mAspectRatio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", set width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_9
    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    if-nez v0, :cond_a

    .line 274
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    .line 277
    :cond_a
    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    if-nez v0, :cond_b

    .line 278
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    .line 281
    :cond_b
    iget-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    if-eqz v0, :cond_c

    .line 282
    invoke-direct {p0, p1}, Ljp/wasabeef/picasso/transformations/CropTransformation;->getLeft(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mLeft:I

    .line 284
    :cond_c
    iget-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    if-eqz v0, :cond_d

    .line 285
    invoke-direct {p0, p1}, Ljp/wasabeef/picasso/transformations/CropTransformation;->getTop(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mTop:I

    .line 288
    :cond_d
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mLeft:I

    iget v3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mTop:I

    iget v4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mLeft:I

    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mTop:I

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    add-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 289
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    iget v4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v3, "PicassoTransformation"

    .line 291
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "PicassoTransformation"

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transform(): created sourceRect with mLeft: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mLeft:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mTop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mTop:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", right: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mLeft:I

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", bottom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mTop:I

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string v3, "PicassoTransformation"

    .line 296
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "PicassoTransformation"

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transform(): created targetRect with width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_f
    iget v3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    iget v4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 301
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const-string v5, "PicassoTransformation"

    .line 302
    invoke-static {v5, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "PicassoTransformation"

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transform(): copying from source with width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 303
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v5, 0x0

    .line 306
    invoke-virtual {v4, p1, v0, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 308
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const-string p1, "PicassoTransformation"

    .line 310
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "PicassoTransformation"

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transform(): returning bitmap with width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-object v3
.end method
