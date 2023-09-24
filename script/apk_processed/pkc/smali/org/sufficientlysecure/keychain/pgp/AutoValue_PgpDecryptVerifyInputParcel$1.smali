.class final Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel$1;
.super Ljava/lang/Object;
.source "AutoValue_PgpDecryptVerifyInputParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;
    .locals 15

    move-object/16 v12, p0

    move-object/16 v13, p1

    .line 17
    new-instance v10, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;

    .line 18
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {v13}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-class v0, Landroid/net/Uri;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    const-class v0, Landroid/net/Uri;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    .line 21
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 22
    :goto_1
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v6, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 23
    :goto_2
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v6, :cond_3

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    const-class v0, Ljava/lang/Long;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v9

    .line 25
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v13}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    move-object v11, v0

    goto :goto_4

    :cond_4
    move-object v11, v1

    .line 26
    :goto_4
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_5
    move-object v13, v1

    :goto_5
    move-object v0, v10

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v7

    move v5, v8

    move-object v7, v9

    move-object v8, v11

    move-object v9, v13

    invoke-direct/range {v0 .. v9}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;-><init>([BLandroid/net/Uri;Landroid/net/Uri;ZZZLjava/util/List;[BLjava/lang/String;)V

    return-object v10

    const-string v14, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;"

    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel$1;->newArray(I)[Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 31
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
