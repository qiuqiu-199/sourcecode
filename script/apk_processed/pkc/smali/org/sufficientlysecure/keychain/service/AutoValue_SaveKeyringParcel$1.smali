.class final Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel$1;
.super Ljava/lang/Object;
.source "AutoValue_SaveKeyringParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;
    .locals 21

    move-object/16 v18, p0

    move-object/16 v19, p1

    move-object/from16 v0, v19

    .line 19
    new-instance v16, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;

    .line 20
    invoke-virtual/range {v19 .. v19}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 21
    :goto_0
    invoke-virtual/range {v19 .. v19}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {v19 .. v19}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    const-class v4, Ljava/lang/String;

    .line 22
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    const-class v5, Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;

    .line 23
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v5

    const-class v6, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    .line 24
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    const-class v7, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;

    .line 25
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v7

    .line 26
    invoke-virtual/range {v19 .. v19}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v8, v2

    const-class v2, Ljava/lang/String;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v9

    const-class v2, Ljava/lang/Long;

    .line 28
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v10

    const-class v2, Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lorg/sufficientlysecure/keychain/util/Passphrase;

    const-class v2, Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 30
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 31
    invoke-virtual/range {v19 .. v19}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v2, v14, :cond_3

    const/4 v15, 0x1

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    .line 32
    :goto_2
    invoke-virtual/range {v19 .. v19}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v14, :cond_4

    const/4 v13, 0x1

    :cond_4
    const-class v2, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 33
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    const-class v2, Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    .line 34
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    move-object/from16 v0, v16

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move v12, v15

    move-object/from16 v15, v17

    invoke-direct/range {v0 .. v15}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;-><init>(Ljava/lang/Long;[BLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/util/Passphrase;ZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;)V

    return-object v16

    const-string v20, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel$1;->newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 39
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
