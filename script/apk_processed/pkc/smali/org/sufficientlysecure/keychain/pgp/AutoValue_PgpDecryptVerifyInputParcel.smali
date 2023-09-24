.class final Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;
.super Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;
.source "AutoValue_PgpDecryptVerifyInputParcel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>([BLandroid/net/Uri;Landroid/net/Uri;ZZZLjava/util/List;[BLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "ZZZ",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;[B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    move-object/16 p4, p7

    move-object/16 p5, p8

    move-object/16 p6, p9

    .line 38
    invoke-direct/range {v0 .. v9}, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;-><init>([BLandroid/net/Uri;Landroid/net/Uri;ZZZLjava/util/List;[BLjava/lang/String;)V

    return-void

    const-string p7, "M_InsDal"

    const-string p8, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;---><init>([BLandroid/net/Uri;Landroid/net/Uri;ZZZLjava/util/List;[BLjava/lang/String;)V"

    invoke-static/range {p7 .. p8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 43
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;->getInputBytes()[B

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
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;->getInputBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 49
    :goto_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;->getInputUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 50
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 51
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;->isAllowSymmetricDecryption()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;->isDecryptMetadataOnly()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;->isAutocryptSetup()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;->getAllowedKeyIds()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 55
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;->getDetachedSignature()[B

    move-result-object v5

    if-nez v5, :cond_1

    .line 56
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;->getDetachedSignature()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 61
    :goto_1
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;->getSenderAddress()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 62
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;->getSenderAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
