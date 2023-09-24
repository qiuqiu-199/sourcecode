.class public Lorg/sufficientlysecure/keychain/util/ByteMapParcelAdapter;
.super Ljava/lang/Object;
.source "ByteMapParcelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/ByteMapParcelAdapter;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic fromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/util/ByteMapParcelAdapter;->fromParcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public fromParcel(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;"
        }
    .end annotation

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 17
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 18
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 20
    invoke-virtual {v6}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 21
    invoke-virtual {v6}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 22
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    return-object v6

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/ByteMapParcelAdapter;--->fromParcel(Landroid/os/Parcel;)Ljava/util/Map;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic toParcel(Ljava/lang/Object;Landroid/os/Parcel;)V
    .locals 0

    .line 14
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/util/ByteMapParcelAdapter;->toParcel(Ljava/util/Map;Landroid/os/Parcel;)V

    return-void
.end method

.method public toParcel(Ljava/util/Map;Landroid/os/Parcel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 29
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/ByteMapParcelAdapter;--->toParcel(Ljava/util/Map;Landroid/os/Parcel;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
