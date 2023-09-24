.class final Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel$1;
.super Ljava/lang/Object;
.source "AutoValue_PgpSignEncryptInputParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;",
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

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 12
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;

    const-class v1, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    const-class v2, Landroid/net/Uri;

    .line 14
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const-class v3, Landroid/net/Uri;

    .line 15
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 16
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v6}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, v3, v6}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;-><init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Landroid/net/Uri;Landroid/net/Uri;[B)V

    return-object v0

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel$1;->newArray(I)[Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 21
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptInputParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
