.class final Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel$1;
.super Ljava/lang/Object;
.source "AutoValue_CryptoInputParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    .line 20
    new-instance v7, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;

    .line 21
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {v9}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-class v0, Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 23
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 24
    :goto_1
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_2
    const-class v0, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    .line 26
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;->access$000()Lorg/sufficientlysecure/keychain/util/ByteMapParcelAdapter;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/sufficientlysecure/keychain/util/ByteMapParcelAdapter;->fromParcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v9

    move-object v0, v7

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;-><init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V

    return-object v7

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel$1;->newArray(I)[Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 31
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
