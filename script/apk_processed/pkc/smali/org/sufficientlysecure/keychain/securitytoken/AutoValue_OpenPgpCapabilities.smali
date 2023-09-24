.class final Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;
.super Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;
.source "AutoValue_OpenPgpCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;
    }
.end annotation


# instance fields
.field private final aid:[B

.field private final attributesChangable:Z

.field private final authKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

.field private final encryptKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

.field private final fingerprintAuth:[B

.field private final fingerprintEncrypt:[B

.field private final fingerprintSign:[B

.field private final hasAesSm:Z

.field private final hasKeyImport:Z

.field private final hasSM:Z

.field private final hasScp11bSm:Z

.field private final historicalBytes:[B

.field private final maxCmdLen:Ljava/lang/Integer;

.field private final maxRspLen:Ljava/lang/Integer;

.field private final pwStatusBytes:[B

.field private final signKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;


# direct methods
.method private constructor <init>([B[B[B[B[B[BLorg/sufficientlysecure/keychain/securitytoken/KeyFormat;Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;ZZZZZLjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    move-object/16 p5, p8

    move-object/16 p6, p9

    move/16 p7, p10

    move/16 p8, p11

    move/16 p9, p12

    move/16 p10, p13

    move/16 p11, p14

    move-object/16 p12, p15

    move-object/16 p13, p16

    move-object v0, v2

    .line 44
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;-><init>()V

    move-object v1, v3

    .line 45
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->aid:[B

    move-object v1, v4

    .line 46
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->historicalBytes:[B

    move-object v1, p0

    .line 47
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->fingerprintSign:[B

    move-object v1, p1

    .line 48
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->fingerprintEncrypt:[B

    move-object v1, p2

    .line 49
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->fingerprintAuth:[B

    move-object v1, p3

    .line 50
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->pwStatusBytes:[B

    move-object v1, p4

    .line 51
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->signKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-object v1, p5

    .line 52
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->encryptKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-object v1, p6

    .line 53
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->authKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move v1, p7

    .line 54
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasKeyImport:Z

    move v1, p8

    .line 55
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->attributesChangable:Z

    move v1, p9

    .line 56
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasSM:Z

    move v1, p10

    .line 57
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasAesSm:Z

    move/from16 v1, p11

    .line 58
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasScp11bSm:Z

    move-object/from16 v1, p12

    .line 59
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->maxCmdLen:Ljava/lang/Integer;

    move-object/from16 v1, p13

    .line 60
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->maxRspLen:Ljava/lang/Integer;

    return-void

    const-string p14, "M_InsDal"

    const-string p15, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;---><init>([B[B[B[B[B[BLorg/sufficientlysecure/keychain/securitytoken/KeyFormat;Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;ZZZZZLjava/lang/Integer;Ljava/lang/Integer;)V"

    invoke-static/range {p14 .. p15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>([B[B[B[B[B[BLorg/sufficientlysecure/keychain/securitytoken/KeyFormat;Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;ZZZZZLjava/lang/Integer;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$1;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p16}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;-><init>([B[B[B[B[B[BLorg/sufficientlysecure/keychain/securitytoken/KeyFormat;Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;ZZZZZLjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    const/4 v0, 0x1

    if-ne v6, v5, :cond_0

    return v0

    .line 181
    :cond_0
    instance-of v1, v6, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 182
    check-cast v6, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    .line 183
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->aid:[B

    instance-of v3, v6, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;

    if-eqz v3, :cond_1

    move-object v4, v6

    check-cast v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->aid:[B

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getAid()[B

    move-result-object v4

    :goto_0
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->historicalBytes:[B

    if-eqz v3, :cond_2

    move-object v4, v6

    check-cast v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->historicalBytes:[B

    goto :goto_1

    .line 184
    :cond_2
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getHistoricalBytes()[B

    move-result-object v4

    :goto_1
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->fingerprintSign:[B

    if-eqz v3, :cond_3

    move-object v4, v6

    check-cast v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->fingerprintSign:[B

    goto :goto_2

    .line 185
    :cond_3
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getFingerprintSign()[B

    move-result-object v4

    :goto_2
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->fingerprintEncrypt:[B

    if-eqz v3, :cond_4

    move-object v4, v6

    check-cast v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->fingerprintEncrypt:[B

    goto :goto_3

    .line 186
    :cond_4
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getFingerprintEncrypt()[B

    move-result-object v4

    :goto_3
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->fingerprintAuth:[B

    if-eqz v3, :cond_5

    move-object v4, v6

    check-cast v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->fingerprintAuth:[B

    goto :goto_4

    .line 187
    :cond_5
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getFingerprintAuth()[B

    move-result-object v4

    :goto_4
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->pwStatusBytes:[B

    if-eqz v3, :cond_6

    move-object v3, v6

    check-cast v3, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->pwStatusBytes:[B

    goto :goto_5

    .line 188
    :cond_6
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getPwStatusBytes()[B

    move-result-object v3

    :goto_5
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->signKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    .line 189
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getSignKeyFormat()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->encryptKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    .line 190
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getEncryptKeyFormat()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->authKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    .line 191
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getAuthKeyFormat()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasKeyImport:Z

    .line 192
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->isHasKeyImport()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget-boolean v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->attributesChangable:Z

    .line 193
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->isAttributesChangable()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget-boolean v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasSM:Z

    .line 194
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->isHasSM()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget-boolean v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasAesSm:Z

    .line 195
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->isHasAesSm()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget-boolean v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasScp11bSm:Z

    .line 196
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->isHasScv61bSm()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->maxCmdLen:Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 197
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getMaxCmdLen()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_6

    :cond_7
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->maxCmdLen:Ljava/lang/Integer;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getMaxCmdLen()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_6
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->maxRspLen:Ljava/lang/Integer;

    if-nez v1, :cond_8

    .line 198
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getMaxRspLen()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_9

    goto :goto_7

    :cond_8
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->maxRspLen:Ljava/lang/Integer;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getMaxRspLen()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_a
    return v2

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAid()[B
    .locals 4

    move-object/16 v1, p0

    .line 66
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->aid:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->getAid()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAuthKeyFormat()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;
    .locals 4

    move-object/16 v1, p0

    .line 114
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->authKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->getAuthKeyFormat()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getEncryptKeyFormat()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;
    .locals 4

    move-object/16 v1, p0

    .line 109
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->encryptKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->getEncryptKeyFormat()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFingerprintAuth()[B
    .locals 4

    move-object/16 v1, p0

    .line 93
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->fingerprintAuth:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->getFingerprintAuth()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFingerprintEncrypt()[B
    .locals 4

    move-object/16 v1, p0

    .line 86
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->fingerprintEncrypt:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->getFingerprintEncrypt()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFingerprintSign()[B
    .locals 4

    move-object/16 v1, p0

    .line 79
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->fingerprintSign:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->getFingerprintSign()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getHistoricalBytes()[B
    .locals 4

    move-object/16 v1, p0

    .line 72
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->historicalBytes:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->getHistoricalBytes()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getMaxCmdLen()Ljava/lang/Integer;
    .locals 4

    move-object/16 v1, p0

    .line 145
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->maxCmdLen:Ljava/lang/Integer;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->getMaxCmdLen()Ljava/lang/Integer;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getMaxRspLen()Ljava/lang/Integer;
    .locals 4

    move-object/16 v1, p0

    .line 151
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->maxRspLen:Ljava/lang/Integer;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->getMaxRspLen()Ljava/lang/Integer;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPwStatusBytes()[B
    .locals 4

    move-object/16 v1, p0

    .line 99
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->pwStatusBytes:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->getPwStatusBytes()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSignKeyFormat()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;
    .locals 4

    move-object/16 v1, p0

    .line 104
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->signKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->getSignKeyFormat()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 8

    move-object/16 v5, p0

    .line 207
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->aid:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 209
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->historicalBytes:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 211
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->fingerprintSign:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 213
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->fingerprintEncrypt:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 215
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->fingerprintAuth:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 217
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->pwStatusBytes:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 219
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->signKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 221
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->encryptKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 223
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->authKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 225
    iget-boolean v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasKeyImport:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 227
    iget-boolean v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->attributesChangable:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 229
    iget-boolean v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasSM:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v2, 0x4d5

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 231
    iget-boolean v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasAesSm:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v2, 0x4d5

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 233
    iget-boolean v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasScp11bSm:Z

    if-eqz v2, :cond_4

    const/16 v3, 0x4cf

    :cond_4
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 235
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->maxCmdLen:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->maxCmdLen:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_4
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 237
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->maxRspLen:Ljava/lang/Integer;

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->maxRspLen:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    return v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->hashCode()I"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isAttributesChangable()Z
    .locals 4

    move-object/16 v1, p0

    .line 124
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->attributesChangable:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->isAttributesChangable()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method isHasAesSm()Z
    .locals 4

    move-object/16 v1, p0

    .line 134
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasAesSm:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->isHasAesSm()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method isHasKeyImport()Z
    .locals 4

    move-object/16 v1, p0

    .line 119
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasKeyImport:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->isHasKeyImport()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method isHasSM()Z
    .locals 4

    move-object/16 v1, p0

    .line 129
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasSM:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->isHasSM()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method isHasScp11bSm()Z
    .locals 4

    move-object/16 v1, p0

    .line 139
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasScp11bSm:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->isHasScp11bSm()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenPgpCapabilities{aid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->aid:[B

    .line 157
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", historicalBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->historicalBytes:[B

    .line 158
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fingerprintSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->fingerprintSign:[B

    .line 159
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fingerprintEncrypt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->fingerprintEncrypt:[B

    .line 160
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fingerprintAuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->fingerprintAuth:[B

    .line 161
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pwStatusBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->pwStatusBytes:[B

    .line 162
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", signKeyFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->signKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encryptKeyFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->encryptKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", authKeyFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->authKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasKeyImport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasKeyImport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", attributesChangable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->attributesChangable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasSM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasSM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasAesSm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasAesSm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasScp11bSm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->hasScp11bSm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxCmdLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->maxCmdLen:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxRspLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;->maxRspLen:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
