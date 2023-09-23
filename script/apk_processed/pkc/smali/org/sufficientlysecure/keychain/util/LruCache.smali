.class public Lorg/sufficientlysecure/keychain/util/LruCache;
.super Ljava/util/LinkedHashMap;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TA;TB;>;"
    }
.end annotation


# instance fields
.field private final maxEntries:I


# direct methods
.method public constructor <init>(I)V
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    add-int/lit8 v0, v4, 0x1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    invoke-direct {v3, v0, v2, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 14
    iput v4, v3, Lorg/sufficientlysecure/keychain/util/LruCache;->maxEntries:I

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/LruCache;---><init>(I)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TA;TB;>;)Z"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 19
    invoke-super {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/LruCache;--->removeEldestEntry(Ljava/util/Map$Entry;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Lorg/sufficientlysecure/keychain/util/LruCache;->maxEntries:I

    if-le v2, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
