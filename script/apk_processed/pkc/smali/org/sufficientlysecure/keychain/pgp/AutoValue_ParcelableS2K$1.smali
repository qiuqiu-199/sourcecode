.class final Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K$1;
.super Ljava/lang/Object;
.source "AutoValue_ParcelableS2K.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    .line 11
    new-instance v7, Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;

    .line 12
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 13
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 15
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 16
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;-><init>(IIIJ[B)V

    return-object v7

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K$1;->newArray(I)[Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 21
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/pgp/AutoValue_ParcelableS2K;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
