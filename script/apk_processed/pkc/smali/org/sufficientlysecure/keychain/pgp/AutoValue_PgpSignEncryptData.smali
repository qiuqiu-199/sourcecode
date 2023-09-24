.class final Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;
.super Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;
.source "AutoValue_PgpSignEncryptData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/Long;JLorg/sufficientlysecure/keychain/util/Passphrase;[JLjava/util/List;Ljava/lang/String;IIIZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Long;",
            "J",
            "Lorg/sufficientlysecure/keychain/util/Passphrase;",
            "[J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "IIIZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-wide/16 v2, p2

    move-object/16 p1, p4

    move-wide/16 p2, p5

    move-object/16 p4, p7

    move-object/16 p5, p8

    move-object/16 p6, p9

    move-object/16 p7, p10

    move/16 p8, p11

    move/16 p9, p12

    move/16 p10, p13

    move/16 p11, p14

    move/16 p12, p15

    move/16 p13, p16

    move/16 p14, p17

    move-object/16 p15, p18

    move-object/16 p16, p19

    .line 49
    invoke-direct/range {v0 .. v19}, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;-><init>(Ljava/lang/String;JLjava/lang/Long;JLorg/sufficientlysecure/keychain/util/Passphrase;[JLjava/util/List;Ljava/lang/String;IIIZZZZLjava/lang/String;Ljava/lang/String;)V

    return-void

    const-string p17, "M_InsDal"

    const-string p18, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;---><init>(Ljava/lang/String;JLjava/lang/Long;JLorg/sufficientlysecure/keychain/util/Passphrase;[JLjava/util/List;Ljava/lang/String;IIIZZZZLjava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p17 .. p18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move/16 v7, p2

    .line 54
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getCharset()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    :goto_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getAdditionalEncryptId()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 61
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getSignatureSubKeyId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    .line 62
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getSignatureSubKeyId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    :goto_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getSignatureMasterKeyId()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getSymmetricPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 69
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getEncryptionMasterKeyIds()[J

    move-result-object v7

    if-nez v7, :cond_2

    .line 70
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 72
    :cond_2
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getEncryptionMasterKeyIds()[J

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 75
    :goto_2
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getAllowedSigningKeyIds()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 76
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getVersionHeader()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    .line 77
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 79
    :cond_3
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getVersionHeader()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    :goto_3
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getCompressionAlgorithm()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getSignatureHashAlgorithm()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getSymmetricEncryptionAlgorithm()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->isEnableAsciiArmorOutput()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->isCleartextSignature()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->isDetachedSignature()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->isHiddenRecipients()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getPassphraseFormat()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    .line 90
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 92
    :cond_4
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getPassphraseFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    :goto_4
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getPassphraseBegin()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    .line 96
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 98
    :cond_5
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;->getPassphraseBegin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_5
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
