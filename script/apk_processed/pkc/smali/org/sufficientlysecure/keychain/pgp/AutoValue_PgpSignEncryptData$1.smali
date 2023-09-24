.class final Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData$1;
.super Ljava/lang/Object;
.source "AutoValue_PgpSignEncryptData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;",
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

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;
    .locals 27

    move-object/16 v24, p0

    move-object/16 v25, p1

    move-object/from16 v0, v25

    .line 17
    new-instance v20, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;

    .line 18
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 20
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 21
    :goto_1
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    const-class v8, Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 22
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 23
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v9

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    const-class v10, Ljava/lang/Long;

    .line 24
    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v10

    .line 25
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 26
    :goto_3
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 27
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 28
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 29
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readInt()I

    move-result v15

    const/16 v16, 0x0

    const/4 v2, 0x1

    if-ne v15, v2, :cond_4

    const/16 v22, 0x1

    goto :goto_4

    :cond_4
    const/16 v22, 0x0

    .line 30
    :goto_4
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-ne v15, v2, :cond_5

    const/16 v23, 0x1

    goto :goto_5

    :cond_5
    const/16 v23, 0x0

    .line 31
    :goto_5
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-ne v15, v2, :cond_6

    const/16 v17, 0x1

    goto :goto_6

    :cond_6
    const/16 v17, 0x0

    .line 32
    :goto_6
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-ne v15, v2, :cond_7

    const/16 v18, 0x1

    goto :goto_7

    :cond_7
    const/16 v18, 0x0

    .line 33
    :goto_7
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    goto :goto_8

    :cond_8
    const/16 v19, 0x0

    .line 34
    :goto_8
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_9

    :cond_9
    const/16 v21, 0x0

    :goto_9
    move-object/from16 v0, v20

    move-wide v2, v3

    move-object v4, v5

    move-wide v5, v6

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move/from16 v14, v22

    move/from16 v15, v23

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v21

    invoke-direct/range {v0 .. v19}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;-><init>(Ljava/lang/String;JLjava/lang/Long;JLorg/sufficientlysecure/keychain/util/Passphrase;[JLjava/util/List;Ljava/lang/String;IIIZZZZLjava/lang/String;Ljava/lang/String;)V

    return-object v20

    const-string v26, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData$1;->newArray(I)[Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 39
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
