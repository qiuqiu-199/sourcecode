.class final Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo$1;
.super Ljava/lang/Object;
.source "AutoValue_SecurityTokenInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;",
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

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;
    .locals 14

    move-object/16 v11, p0

    move-object/16 v12, p1

    .line 15
    new-instance v10, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;

    .line 16
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;

    move-result-object v1

    .line 17
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    move-result-object v2

    const-class v0, [B

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    .line 19
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    invoke-virtual {v12}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 20
    :goto_0
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, v4

    .line 21
    :goto_1
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, v4

    .line 22
    :goto_2
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 23
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 24
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v12

    const/4 v0, 0x1

    if-ne v12, v0, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    move-object v0, v10

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    move v9, v12

    invoke-direct/range {v0 .. v9}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;IIZ)V

    return-object v10

    const-string v13, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;"

    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo$1;->newArray(I)[Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 29
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
