.class final Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel$1;
.super Ljava/lang/Object;
.source "AutoValue_InputDataParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 13
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;

    const-class v1, Landroid/net/Uri;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const-class v2, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    .line 15
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    .line 16
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v3, 0x1

    if-ne v5, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;-><init>(Landroid/net/Uri;Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Z)V

    return-object v0

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel$1;->newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 21
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
