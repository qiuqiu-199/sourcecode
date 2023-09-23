.class public Lorg/sufficientlysecure/keychain/util/ParcelableProxy;
.super Ljava/lang/Object;
.source "ParcelableProxy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROXY_MODE_NORMAL:I = 0x0

.field public static final PROXY_MODE_TOR:I = 0x1


# instance fields
.field private mProxyHost:Ljava/lang/String;

.field private mProxyMode:I

.field private mProxyPort:I

.field private mProxyType:Ljava/net/Proxy$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 92
    new-instance v0, Lorg/sufficientlysecure/keychain/util/ParcelableProxy$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 71
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->mProxyHost:Ljava/lang/String;

    .line 73
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->mProxyPort:I

    .line 74
    invoke-virtual {v2}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy$Type;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->mProxyType:Ljava/net/Proxy$Type;

    .line 75
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->mProxyMode:I

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/net/Proxy$Type;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    move/16 p1, p4

    .line 40
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->mProxyHost:Ljava/lang/String;

    .line 42
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->mProxyHost:Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    .line 46
    :cond_0
    iput v2, v0, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->mProxyPort:I

    .line 47
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->mProxyType:Ljava/net/Proxy$Type;

    .line 48
    iput p1, v0, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->mProxyMode:I

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;---><init>(Ljava/lang/String;ILjava/net/Proxy$Type;I)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getForNoProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;
    .locals 7

    .line 52
    new-instance v0, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v1, v3}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;-><init>(Ljava/lang/String;ILjava/net/Proxy$Type;I)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;--->getForNoProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 7

    move-object/16 v4, p0

    .line 61
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->mProxyHost:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/net/Proxy;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->mProxyType:Ljava/net/Proxy$Type;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->mProxyHost:Ljava/lang/String;

    iget v3, v4, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->mProxyPort:I

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;--->getProxy()Ljava/net/Proxy;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isTorEnabled()Z
    .locals 5

    move-object/16 v2, p0

    .line 56
    iget v0, v2, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->mProxyMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;--->isTorEnabled()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 85
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->mProxyHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget v2, v0, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->mProxyPort:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->mProxyType:Ljava/net/Proxy$Type;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 88
    iget v2, v0, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->mProxyMode:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
