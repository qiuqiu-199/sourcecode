.class final Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel$1;
.super Ljava/lang/Object;
.source "AutoValue_UploadKeyringParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;",
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

    const-string v2, "Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 13
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;

    const-class v1, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 15
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 16
    :goto_0
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v7}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    :cond_1
    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;-><init>(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Ljava/lang/Long;[B)V

    return-object v0

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel$1;->newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 21
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
