.class final Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel$1;
.super Ljava/lang/Object;
.source "AutoValue_ImportKeyringParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 16
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;

    const-class v1, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 19
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 20
    :goto_0
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;-><init>(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;ZZ)V

    return-object v0

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel$1;->newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 25
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
