.class final Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry$2;
.super Ljava/lang/Object;
.source "ImportKeysListEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 384
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry$2;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 384
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry$2;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 386
    new-instance v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;-><init>()V

    .line 388
    const-class v1, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->access$002(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    .line 389
    invoke-virtual {v8}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->access$102(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    .line 390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->access$202(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 391
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->access$200(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 392
    invoke-virtual {v8}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->access$302(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 393
    invoke-virtual {v8}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->access$402(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)Z

    .line 394
    invoke-virtual {v8}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->access$502(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)Z

    .line 395
    invoke-virtual {v8}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->access$602(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)Z

    .line 396
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v8}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    goto :goto_3

    :cond_3
    move-object v1, v4

    :goto_3
    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->access$702(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Ljava/util/Date;)Ljava/util/Date;

    .line 397
    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->access$802(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;[B)[B

    .line 398
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->access$902(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Ljava/lang/String;)Ljava/lang/String;

    .line 399
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_4
    invoke-static {v0, v4}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->access$1002(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 400
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->access$1102(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    invoke-virtual {v8}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->access$1202(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)Z

    .line 402
    const-class v1, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->access$1302(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 403
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->access$1402(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Ljava/lang/String;)Ljava/lang/String;

    .line 404
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->access$1502(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Ljava/lang/String;)Ljava/lang/String;

    return-object v0

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry$2;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 384
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry$2;->newArray(I)[Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 410
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry$2;--->newArray(I)[Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
