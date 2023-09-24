.class final Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;
.super Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;
.source "AutoValue_SecurityTokenInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;IIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;",
            "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;",
            "Ljava/util/List<",
            "[B>;[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move/16 p4, p7

    move/16 p5, p8

    move/16 p6, p9

    .line 37
    invoke-direct/range {v0 .. v9}, Lorg/sufficientlysecure/keychain/securitytoken/$AutoValue_SecurityTokenInfo;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;IIZ)V

    return-void

    const-string p7, "M_InsDal"

    const-string p8, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;IIZ)V"

    invoke-static/range {p7 .. p8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 42
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;->getTransportType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;->getTokenType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;->getFingerprints()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 45
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;->getAid()[B

    move-result-object v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v4, :cond_0

    .line 46
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;->getAid()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 51
    :goto_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 52
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    :goto_1
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 58
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    :goto_2
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;->getVerifyRetries()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;->getVerifyAdminRetries()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;->hasLifeCycleManagement()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_SecurityTokenInfo;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
