.class final Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel$1;
.super Ljava/lang/Object;
.source "AutoValue_BackupKeyringParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;",
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

    const-string v2, "Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    .line 16
    new-instance v8, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;

    .line 17
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v11}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 18
    :goto_1
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 19
    :goto_2
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 20
    :goto_3
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_3

    const/4 v6, 0x1

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    .line 21
    :goto_4
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_4

    const/4 v7, 0x1

    goto :goto_5

    :cond_4
    const/4 v7, 0x0

    :goto_5
    const-class v0, Landroid/net/Uri;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/net/Uri;

    const-class v0, Ljava/lang/String;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v11

    move-object v0, v8

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move-object v6, v9

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;-><init>([JZZZZLandroid/net/Uri;Ljava/util/List;)V

    return-object v8

    const-string v12, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel$1;->newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 28
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
