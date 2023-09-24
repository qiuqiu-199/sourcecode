.class public abstract Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;
.super Ljava/lang/Object;
.source "OpenPgpCapabilities.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
    }
.end annotation


# static fields
.field private static final MASK_ATTRIBUTES_CHANGABLE:I = 0x4

.field private static final MASK_KEY_IMPORT:I = 0x20

.field private static final MASK_SM:I = 0x80

.field private static final MAX_PW1_LENGTH_INDEX:I = 0x1

.field private static final MAX_PW3_LENGTH_INDEX:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    const/4 v0, 0x1

    .line 73
    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->readList([BZ)[Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;

    move-result-object v1

    .line 74
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->updateWithTLV([Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->build()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;--->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getAid()[B
.end method

.method public abstract getAuthKeyFormat()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;
.end method

.method public abstract getEncryptKeyFormat()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;
.end method

.method public abstract getFingerprintAuth()[B
.end method

.method public abstract getFingerprintEncrypt()[B
.end method

.method public abstract getFingerprintSign()[B
.end method

.method public getFormatForKeyType(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;)Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 78
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$1;->$SwitchMap$org$sufficientlysecure$keychain$securitytoken$KeyType:[I

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->ordinal()I

    move-result v2

    aget v2, v0, v2

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    return-object v2

    .line 81
    :pswitch_0
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getAuthKeyFormat()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v2

    return-object v2

    .line 80
    :pswitch_1
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getEncryptKeyFormat()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v2

    return-object v2

    .line 79
    :pswitch_2
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getSignKeyFormat()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;--->getFormatForKeyType(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;)Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method abstract getHistoricalBytes()[B
.end method

.method public getKeyFingerprint(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;)[B
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 88
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$1;->$SwitchMap$org$sufficientlysecure$keychain$securitytoken$KeyType:[I

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->ordinal()I

    move-result v2

    aget v2, v0, v2

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    return-object v2

    .line 91
    :pswitch_0
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getFingerprintAuth()[B

    move-result-object v2

    return-object v2

    .line 90
    :pswitch_1
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getFingerprintEncrypt()[B

    move-result-object v2

    return-object v2

    .line 89
    :pswitch_2
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getFingerprintSign()[B

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;--->getKeyFingerprint(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;)[B"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method abstract getMaxCmdLen()Ljava/lang/Integer;
.end method

.method abstract getMaxRspLen()Ljava/lang/Integer;
.end method

.method public getPw1MaxLength()I
    .locals 5

    move-object/16 v2, p0

    .line 101
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getPwStatusBytes()[B

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;--->getPw1MaxLength()I"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPw1TriesLeft()I
    .locals 5

    move-object/16 v2, p0

    .line 109
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getPwStatusBytes()[B

    move-result-object v0

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;--->getPw1TriesLeft()I"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPw3MaxLength()I
    .locals 5

    move-object/16 v2, p0

    .line 105
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getPwStatusBytes()[B

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;--->getPw3MaxLength()I"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPw3TriesLeft()I
    .locals 5

    move-object/16 v2, p0

    .line 113
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getPwStatusBytes()[B

    move-result-object v0

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;--->getPw3TriesLeft()I"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getPwStatusBytes()[B
.end method

.method public abstract getSignKeyFormat()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;
.end method

.method public abstract isAttributesChangable()Z
.end method

.method abstract isHasAesSm()Z
.end method

.method abstract isHasKeyImport()Z
.end method

.method abstract isHasSM()Z
.end method

.method abstract isHasScp11bSm()Z
.end method

.method isPw1ValidForMultipleSignatures()Z
    .locals 6

    move-object/16 v3, p0

    .line 97
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getPwStatusBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;--->isPw1ValidForMultipleSignatures()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
