.class public final Lcom/google/android/gms/vision/text/TextRecognizer;
.super Lcom/google/android/gms/vision/Detector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/text/TextRecognizer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/vision/Detector<",
        "Lcom/google/android/gms/vision/text/TextBlock;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbPt:Lcom/google/android/gms/internal/zzbkn;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/vision/Detector;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default constructor called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzbkn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/vision/Detector;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/vision/text/TextRecognizer;->zzbPt:Lcom/google/android/gms/internal/zzbkn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbkn;Lcom/google/android/gms/vision/text/TextRecognizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/vision/text/TextRecognizer;-><init>(Lcom/google/android/gms/internal/zzbkn;)V

    return-void
.end method

.method private zza(Ljava/nio/ByteBuffer;III)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    move-object v2, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v2, v0

    :goto_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Landroid/graphics/YuvImage;

    const/4 v6, 0x0

    move-object v1, v0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance p2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p3, 0x64

    invoke-virtual {v0, p2, p3, p1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    array-length p2, p1

    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private zza(Landroid/graphics/Rect;IILcom/google/android/gms/internal/zzbka;)Landroid/graphics/Rect;
    .locals 3

    iget p4, p4, Lcom/google/android/gms/internal/zzbka;->rotation:I

    packed-switch p4, :pswitch_data_0

    return-object p1

    :pswitch_0
    new-instance p3, Landroid/graphics/Rect;

    iget p4, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int v0, p2, v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p1

    invoke-direct {p3, p4, v0, v1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p3

    :pswitch_1
    new-instance p4, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int v0, p2, v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p1

    invoke-direct {p4, v0, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p4

    :pswitch_2
    new-instance p2, Landroid/graphics/Rect;

    iget p4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int p4, p3, p4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, v1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p2, p4, v0, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private zza([Lcom/google/android/gms/internal/zzbkh;)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/internal/zzbkh;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/text/TextBlock;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    iget v5, v4, Lcom/google/android/gms/internal/zzbkh;->zzbPE:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    if-nez v5, :cond_0

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iget v6, v4, Lcom/google/android/gms/internal/zzbkh;->zzbPE:I

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    iget v6, v4, Lcom/google/android/gms/internal/zzbkh;->zzbPF:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {p1, v1}, Landroid/util/SparseArray;-><init>(I)V

    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    new-instance v3, Lcom/google/android/gms/vision/text/TextBlock;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-direct {v3, v4}, Lcom/google/android/gms/vision/text/TextBlock;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method


# virtual methods
.method public detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Frame;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/text/TextBlock;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbkj;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/zzbkj;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/vision/text/TextRecognizer;->zza(Lcom/google/android/gms/vision/Frame;Lcom/google/android/gms/internal/zzbkj;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method public isOperational()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextRecognizer;->zzbPt:Lcom/google/android/gms/internal/zzbkn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbkn;->isOperational()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/vision/Detector;->release()V

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextRecognizer;->zzbPt:Lcom/google/android/gms/internal/zzbkn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbkn;->zzTR()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/vision/Frame;Lcom/google/android/gms/internal/zzbkj;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Frame;",
            "Lcom/google/android/gms/internal/zzbkj;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/text/TextBlock;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbka;->zzc(Lcom/google/android/gms/vision/Frame;)Lcom/google/android/gms/internal/zzbka;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getGrayscaleImageData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Metadata;->getFormat()I

    move-result v1

    iget v3, v0, Lcom/google/android/gms/internal/zzbka;->width:I

    iget v4, v0, Lcom/google/android/gms/internal/zzbka;->height:I

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/google/android/gms/vision/text/TextRecognizer;->zza(Ljava/nio/ByteBuffer;III)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbkc;->zzb(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/zzbka;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/internal/zzbkj;->zzbPG:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p2, Lcom/google/android/gms/internal/zzbkj;->zzbPG:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/vision/Frame$Metadata;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Metadata;->getHeight()I

    move-result p1

    invoke-direct {p0, v2, v3, p1, v0}, Lcom/google/android/gms/vision/text/TextRecognizer;->zza(Landroid/graphics/Rect;IILcom/google/android/gms/internal/zzbka;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v2, p2, Lcom/google/android/gms/internal/zzbkj;->zzbPG:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    const/4 p1, 0x0

    iput p1, v0, Lcom/google/android/gms/internal/zzbka;->rotation:I

    iget-object p1, p0, Lcom/google/android/gms/vision/text/TextRecognizer;->zzbPt:Lcom/google/android/gms/internal/zzbkn;

    invoke-virtual {p1, v1, v0, p2}, Lcom/google/android/gms/internal/zzbkn;->zza(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/zzbka;Lcom/google/android/gms/internal/zzbkj;)[Lcom/google/android/gms/internal/zzbkh;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/vision/text/TextRecognizer;->zza([Lcom/google/android/gms/internal/zzbkh;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No frame supplied."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
