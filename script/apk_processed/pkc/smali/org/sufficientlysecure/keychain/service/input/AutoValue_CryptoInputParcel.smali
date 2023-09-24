.class final Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;
.super Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;
.source "AutoValue_CryptoInputParcel.java"


# static fields
.field private static final BYTE_MAP_PARCEL_ADAPTER:Lorg/sufficientlysecure/keychain/util/ByteMapParcelAdapter;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Lorg/sufficientlysecure/keychain/util/ByteMapParcelAdapter;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/util/ByteMapParcelAdapter;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;->BYTE_MAP_PARCEL_ADAPTER:Lorg/sufficientlysecure/keychain/util/ByteMapParcelAdapter;

    .line 17
    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Lorg/sufficientlysecure/keychain/util/Passphrase;",
            "Ljava/lang/Long;",
            "Z",
            "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    .line 38
    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/service/input/$AutoValue_CryptoInputParcel;-><init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;---><init>(Ljava/util/Date;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;ZLorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Map;)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000()Lorg/sufficientlysecure/keychain/util/ByteMapParcelAdapter;
    .locals 1

    .line 14
    sget-object v0, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;->BYTE_MAP_PARCEL_ADAPTER:Lorg/sufficientlysecure/keychain/util/ByteMapParcelAdapter;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 43
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 49
    :goto_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 50
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;->getPassphraseSubkey()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    .line 51
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;->getPassphraseSubkey()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 56
    :goto_1
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;->isCachePassphrase()Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 58
    sget-object v5, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;->BYTE_MAP_PARCEL_ADAPTER:Lorg/sufficientlysecure/keychain/util/ByteMapParcelAdapter;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;->getCryptoData()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Lorg/sufficientlysecure/keychain/util/ByteMapParcelAdapter;->toParcel(Ljava/util/Map;Landroid/os/Parcel;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/input/AutoValue_CryptoInputParcel;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
