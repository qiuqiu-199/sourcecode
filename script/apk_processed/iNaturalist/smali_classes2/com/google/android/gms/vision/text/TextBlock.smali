.class public Lcom/google/android/gms/vision/text/TextBlock;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/vision/text/Text;


# instance fields
.field private cornerPoints:[Landroid/graphics/Point;

.field private zzbPp:[Lcom/google/android/gms/internal/zzbkh;

.field private zzbPq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/vision/text/Line;",
            ">;"
        }
    .end annotation
.end field

.field private zzbPr:Ljava/lang/String;

.field private zzbPs:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/zzbkh;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbkh;

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPp:[Lcom/google/android/gms/internal/zzbkh;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPp:[Lcom/google/android/gms/internal/zzbkh;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPp:[Lcom/google/android/gms/internal/zzbkh;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbkh;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static zza(IIIILcom/google/android/gms/internal/zzbkd;)[Landroid/graphics/Point;
    .locals 11

    iget v0, p4, Lcom/google/android/gms/internal/zzbkd;->left:I

    iget v1, p4, Lcom/google/android/gms/internal/zzbkd;->top:I

    iget v2, p4, Lcom/google/android/gms/internal/zzbkd;->zzbPv:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget p4, p4, Lcom/google/android/gms/internal/zzbkd;->zzbPv:F

    float-to-double v4, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const/4 p4, 0x4

    new-array v6, p4, [Landroid/graphics/Point;

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    const/4 p1, 0x1

    aput-object v7, v6, p1

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    const/4 p2, 0x2

    aput-object p1, v6, p2

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p0, p3}, Landroid/graphics/Point;-><init>(II)V

    const/4 p0, 0x3

    aput-object p1, v6, p0

    :goto_0
    if-ge v8, p4, :cond_0

    aget-object p0, v6, v8

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v4

    aget-object p2, v6, v8

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v2

    sub-double/2addr p0, p2

    double-to-int p0, p0

    aget-object p1, v6, v8

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    aget-object p3, v6, v8

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-double v9, p3

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v4

    add-double/2addr p1, v9

    double-to-int p1, p1

    aget-object p2, v6, v8

    iput p0, p2, Landroid/graphics/Point;->x:I

    aget-object p0, v6, v8

    iput p1, p0, Landroid/graphics/Point;->y:I

    aget-object p0, v6, v8

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Point;->offset(II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-object v6
.end method

.method private static zza(Lcom/google/android/gms/internal/zzbkd;Lcom/google/android/gms/internal/zzbkd;)[Landroid/graphics/Point;
    .locals 10

    iget v0, p1, Lcom/google/android/gms/internal/zzbkd;->left:I

    neg-int v0, v0

    iget v1, p1, Lcom/google/android/gms/internal/zzbkd;->top:I

    neg-int v1, v1

    iget v2, p1, Lcom/google/android/gms/internal/zzbkd;->zzbPv:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget p1, p1, Lcom/google/android/gms/internal/zzbkd;->zzbPv:F

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    iget v7, p0, Lcom/google/android/gms/internal/zzbkd;->left:I

    iget v8, p0, Lcom/google/android/gms/internal/zzbkd;->top:I

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    const/4 v7, 0x0

    aput-object v6, p1, v7

    aget-object v6, p1, v7

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Point;->offset(II)V

    aget-object v0, p1, v7

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    aget-object v6, p1, v7

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v2

    add-double/2addr v0, v8

    double-to-int v0, v0

    aget-object v1, p1, v7

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v2

    aget-object v1, p1, v7

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v4

    add-double/2addr v8, v1

    double-to-int v1, v8

    aget-object v2, p1, v7

    iput v0, v2, Landroid/graphics/Point;->x:I

    aget-object v2, p1, v7

    iput v1, v2, Landroid/graphics/Point;->y:I

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/google/android/gms/internal/zzbkd;->width:I

    add-int/2addr v3, v0

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x1

    aput-object v2, p1, v3

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/google/android/gms/internal/zzbkd;->width:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/google/android/gms/internal/zzbkd;->height:I

    add-int/2addr v4, v1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x2

    aput-object v2, p1, v3

    new-instance v2, Landroid/graphics/Point;

    iget p0, p0, Lcom/google/android/gms/internal/zzbkd;->height:I

    add-int/2addr v1, p0

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    const/4 p0, 0x3

    aput-object v2, p1, p0

    return-object p1
.end method


# virtual methods
.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPs:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/vision/text/zza;->zza(Lcom/google/android/gms/vision/text/Text;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPs:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPs:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/vision/text/Text;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/vision/text/TextBlock;->zzTV()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCornerPoints()[Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->cornerPoints:[Landroid/graphics/Point;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/vision/text/TextBlock;->zzTU()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->cornerPoints:[Landroid/graphics/Point;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPr:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPp:[Lcom/google/android/gms/internal/zzbkh;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    iget-object v6, v5, Lcom/google/android/gms/internal/zzbkh;->zzbPr:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/google/android/gms/internal/zzbkh;->zzbPr:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iget-object v5, v5, Lcom/google/android/gms/internal/zzbkh;->zzbPr:Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/vision/text/TextBlock$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/vision/text/TextBlock$1;-><init>(Lcom/google/android/gms/vision/text/TextBlock;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPr:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPr:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "und"

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPr:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPr:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPp:[Lcom/google/android/gms/internal/zzbkh;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPp:[Lcom/google/android/gms/internal/zzbkh;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbkh;->zzbPA:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPp:[Lcom/google/android/gms/internal/zzbkh;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPp:[Lcom/google/android/gms/internal/zzbkh;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbkh;->zzbPA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzTU()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPp:[Lcom/google/android/gms/internal/zzbkh;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Landroid/graphics/Point;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->cornerPoints:[Landroid/graphics/Point;

    return-void

    :cond_0
    const/high16 v0, -0x80000000

    const v2, 0x7fffffff

    const/4 v0, 0x0

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    :goto_1
    iget-object v6, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPp:[Lcom/google/android/gms/internal/zzbkh;

    array-length v6, v6

    if-ge v0, v6, :cond_2

    iget-object v6, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPp:[Lcom/google/android/gms/internal/zzbkh;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/google/android/gms/internal/zzbkh;->zzbPx:Lcom/google/android/gms/internal/zzbkd;

    iget-object v7, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPp:[Lcom/google/android/gms/internal/zzbkh;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/google/android/gms/internal/zzbkh;->zzbPx:Lcom/google/android/gms/internal/zzbkd;

    invoke-static {v6, v7}, Lcom/google/android/gms/vision/text/TextBlock;->zza(Lcom/google/android/gms/internal/zzbkd;Lcom/google/android/gms/internal/zzbkd;)[Landroid/graphics/Point;

    move-result-object v6

    move v7, v5

    move v5, v3

    move v3, v2

    const/4 v2, 0x0

    :goto_2
    const/4 v8, 0x4

    if-ge v2, v8, :cond_1

    aget-object v8, v6, v2

    iget v9, v8, Landroid/graphics/Point;->x:I

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v9, v8, Landroid/graphics/Point;->x:I

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v9, v8, Landroid/graphics/Point;->y:I

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    move v3, v5

    move v5, v7

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPp:[Lcom/google/android/gms/internal/zzbkh;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbkh;->zzbPx:Lcom/google/android/gms/internal/zzbkd;

    invoke-static {v2, v3, v4, v5, v0}, Lcom/google/android/gms/vision/text/TextBlock;->zza(IIIILcom/google/android/gms/internal/zzbkd;)[Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0
.end method

.method zzTV()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/vision/text/Line;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPp:[Lcom/google/android/gms/internal/zzbkh;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPq:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPp:[Lcom/google/android/gms/internal/zzbkh;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPq:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPp:[Lcom/google/android/gms/internal/zzbkh;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPq:Ljava/util/List;

    new-instance v5, Lcom/google/android/gms/vision/text/Line;

    invoke-direct {v5, v3}, Lcom/google/android/gms/vision/text/Line;-><init>(Lcom/google/android/gms/internal/zzbkh;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzbPq:Ljava/util/List;

    return-object v0
.end method
