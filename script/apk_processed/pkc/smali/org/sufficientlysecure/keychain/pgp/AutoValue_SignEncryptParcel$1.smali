.class final Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel$1;
.super Ljava/lang/Object;
.source "AutoValue_SignEncryptParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 15
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel;

    const-class v1, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    const-class v2, Landroid/net/Uri;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    .line 18
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    .line 19
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v6}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, v3, v6}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel;-><init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Ljava/util/List;Ljava/util/List;[B)V

    return-object v0

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel$1;->newArray(I)[Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 24
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
