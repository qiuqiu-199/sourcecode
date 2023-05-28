.class public Lorg/inaturalist/android/UTFGrid;
.super Ljava/lang/Object;
.source "UTFGrid.java"


# static fields
.field private static final EMPTY_KEY:Ljava/lang/String; = ""

.field private static final EXPANSION_PIXELS:I = 0x8

.field private static final TILE_SIZE:I = 0x100


# instance fields
.field private mData:Lorg/json/JSONObject;

.field private mGrid:Lorg/json/JSONArray;

.field private mKeys:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "grid"

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/UTFGrid;->mGrid:Lorg/json/JSONArray;

    const-string v0, "keys"

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/UTFGrid;->mKeys:Lorg/json/JSONArray;

    const-string v0, "data"

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/UTFGrid;->mData:Lorg/json/JSONObject;

    return-void
.end method

.method private decodeId(I)I
    .locals 1

    const/16 v0, 0x5d

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    const/16 v0, 0x23

    if-lt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    add-int/lit8 p1, p1, -0x20

    return p1
.end method


# virtual methods
.method public getDataForPixel(II)Lorg/json/JSONObject;
    .locals 1

    .line 94
    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/UTFGrid;->getKeyForPixelExpansive(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    .line 99
    :cond_0
    iget-object p2, p0, Lorg/inaturalist/android/UTFGrid;->mData:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object v0

    .line 101
    :cond_1
    iget-object p2, p0, Lorg/inaturalist/android/UTFGrid;->mData:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getKeyForPixel(II)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    const/16 v1, 0x100

    if-ge p1, v1, :cond_1

    if-ge p2, v1, :cond_1

    .line 40
    iget-object v2, p0, Lorg/inaturalist/android/UTFGrid;->mGrid:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    div-int/2addr v1, v2

    .line 41
    div-int/2addr p2, v1

    .line 42
    div-int/2addr p1, v1

    .line 44
    iget-object v1, p0, Lorg/inaturalist/android/UTFGrid;->mGrid:Lorg/json/JSONArray;

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 45
    invoke-direct {p0, p1}, Lorg/inaturalist/android/UTFGrid;->decodeId(I)I

    move-result p1

    if-ltz p1, :cond_1

    .line 47
    iget-object p2, p0, Lorg/inaturalist/android/UTFGrid;->mKeys:Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 50
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/UTFGrid;->mKeys:Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyForPixelExpansive(II)Ljava/lang/String;
    .locals 7

    .line 56
    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/UTFGrid;->getKeyForPixel(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x100

    .line 60
    iget-object v1, p0, Lorg/inaturalist/android/UTFGrid;->mGrid:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    div-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x8

    move v2, v0

    :goto_0
    if-gt v2, v1, :cond_9

    sub-int v3, p1, v2

    sub-int v4, p2, v2

    .line 65
    invoke-virtual {p0, v3, v4}, Lorg/inaturalist/android/UTFGrid;->getKeyForPixel(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    return-object v5

    .line 67
    :cond_1
    invoke-virtual {p0, p1, v4}, Lorg/inaturalist/android/UTFGrid;->getKeyForPixel(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    return-object v5

    :cond_2
    add-int v5, p1, v2

    .line 69
    invoke-virtual {p0, v5, v4}, Lorg/inaturalist/android/UTFGrid;->getKeyForPixel(II)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    .line 70
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    return-object v4

    .line 71
    :cond_3
    invoke-virtual {p0, v5, p2}, Lorg/inaturalist/android/UTFGrid;->getKeyForPixel(II)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    .line 72
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    return-object v4

    :cond_4
    add-int v4, p2, v2

    .line 73
    invoke-virtual {p0, v5, v4}, Lorg/inaturalist/android/UTFGrid;->getKeyForPixel(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    return-object v5

    .line 75
    :cond_5
    invoke-virtual {p0, p1, v4}, Lorg/inaturalist/android/UTFGrid;->getKeyForPixel(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    return-object v5

    .line 77
    :cond_6
    invoke-virtual {p0, v3, v4}, Lorg/inaturalist/android/UTFGrid;->getKeyForPixel(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    return-object v4

    .line 79
    :cond_7
    invoke-virtual {p0, v3, p2}, Lorg/inaturalist/android/UTFGrid;->getKeyForPixel(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    return-object v3

    :cond_8
    add-int/2addr v2, v0

    goto :goto_0

    :cond_9
    const-string p1, ""

    return-object p1
.end method
