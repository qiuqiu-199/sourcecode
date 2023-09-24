.class final Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing$1;
.super Ljava/lang/Object;
.source "AutoValue_ParcelableKeyRing.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 12
    new-instance v6, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;

    .line 13
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 14
    :goto_0
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 15
    :goto_1
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_2

    :cond_2
    move-object v4, v1

    .line 16
    :goto_2
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_3

    :cond_3
    move-object v5, v1

    .line 17
    :goto_3
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object v8, v1

    :goto_4
    move-object v0, v6

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;-><init>([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing$1;->newArray(I)[Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 22
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/keyimport/AutoValue_ParcelableKeyRing;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
