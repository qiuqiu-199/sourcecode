.class final Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;
.super Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
.source "AutoValue_OpenPgpCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private aid:[B

.field private attributesChangable:Ljava/lang/Boolean;

.field private authKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

.field private encryptKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

.field private fingerprintAuth:[B

.field private fingerprintEncrypt:[B

.field private fingerprintSign:[B

.field private hasAesSm:Ljava/lang/Boolean;

.field private hasKeyImport:Ljava/lang/Boolean;

.field private hasSM:Ljava/lang/Boolean;

.field private hasScp11bSm:Ljava/lang/Boolean;

.field private historicalBytes:[B

.field private maxCmdLen:Ljava/lang/Integer;

.field private maxRspLen:Ljava/lang/Integer;

.field private pwStatusBytes:[B

.field private signKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 258
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method aid([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    .line 263
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v0, "Null aid"

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->aid:[B

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;--->aid([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method attributesChangable(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 330
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->attributesChangable:Ljava/lang/Boolean;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;--->attributesChangable(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method authKeyFormat(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    .line 318
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v0, "Null authKeyFormat"

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 320
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->authKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;--->authKeyFormat(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method build()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;
    .locals 24

    move-object/16 v21, p0

    move-object/from16 v0, v21

    const-string v1, ""

    .line 361
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->aid:[B

    if-nez v2, :cond_0

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " aid"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    :cond_0
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->historicalBytes:[B

    if-nez v2, :cond_1

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " historicalBytes"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 367
    :cond_1
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->pwStatusBytes:[B

    if-nez v2, :cond_2

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pwStatusBytes"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    :cond_2
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->signKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    if-nez v2, :cond_3

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " signKeyFormat"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    :cond_3
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->encryptKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    if-nez v2, :cond_4

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " encryptKeyFormat"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    :cond_4
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->authKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    if-nez v2, :cond_5

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " authKeyFormat"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    :cond_5
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->hasKeyImport:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hasKeyImport"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    :cond_6
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->attributesChangable:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " attributesChangable"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 385
    :cond_7
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->hasSM:Ljava/lang/Boolean;

    if-nez v2, :cond_8

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hasSM"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    :cond_8
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->hasAesSm:Ljava/lang/Boolean;

    if-nez v2, :cond_9

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hasAesSm"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    :cond_9
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->hasScp11bSm:Ljava/lang/Boolean;

    if-nez v2, :cond_a

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hasScp11bSm"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 395
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required properties:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 397
    :cond_b
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;

    iget-object v4, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->aid:[B

    iget-object v5, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->historicalBytes:[B

    iget-object v6, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->fingerprintSign:[B

    iget-object v7, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->fingerprintEncrypt:[B

    iget-object v8, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->fingerprintAuth:[B

    iget-object v9, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->pwStatusBytes:[B

    iget-object v10, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->signKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    iget-object v11, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->encryptKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    iget-object v12, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->authKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->hasKeyImport:Ljava/lang/Boolean;

    .line 407
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->attributesChangable:Ljava/lang/Boolean;

    .line 408
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->hasSM:Ljava/lang/Boolean;

    .line 409
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->hasAesSm:Ljava/lang/Boolean;

    .line 410
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->hasScp11bSm:Ljava/lang/Boolean;

    .line 411
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->maxCmdLen:Ljava/lang/Integer;

    iget-object v3, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->maxRspLen:Ljava/lang/Integer;

    const/16 v20, 0x0

    move-object/from16 v19, v3

    move-object v3, v1

    move-object/from16 v18, v2

    invoke-direct/range {v3 .. v20}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities;-><init>([B[B[B[B[B[BLorg/sufficientlysecure/keychain/securitytoken/KeyFormat;Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;ZZZZZLjava/lang/Integer;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$1;)V

    return-object v1

    const-string v22, "M_InsDal"

    const-string v23, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;--->build()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method encryptKeyFormat(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    .line 310
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v0, "Null encryptKeyFormat"

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->encryptKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;--->encryptKeyFormat(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method fingerprintAuth([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 288
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->fingerprintAuth:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;--->fingerprintAuth([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method fingerprintEncrypt([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 283
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->fingerprintEncrypt:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;--->fingerprintEncrypt([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method fingerprintSign([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 278
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->fingerprintSign:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;--->fingerprintSign([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method hasAesSm(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 340
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->hasAesSm:Ljava/lang/Boolean;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;--->hasAesSm(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method hasKeyImport(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 325
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->hasKeyImport:Ljava/lang/Boolean;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;--->hasKeyImport(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method hasSM(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 335
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->hasSM:Ljava/lang/Boolean;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;--->hasSM(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method hasScp11bSm(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 345
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->hasScv11bSm:Ljava/lang/Boolean;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;--->hasScp11bSm(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method historicalBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    .line 271
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v0, "Null historicalBytes"

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 273
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->historicalBytes:[B

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;--->historicalBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method maxCmdLen(Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 350
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->maxCmdLen:Ljava/lang/Integer;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;--->maxCmdLen(Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method maxRspLen(Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 355
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->maxRspLen:Ljava/lang/Integer;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;--->maxRspLen(Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method pwStatusBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    .line 294
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v0, "Null pwStatusBytes"

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 296
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->pwStatusBytes:[B

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;--->pwStatusBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method signKeyFormat(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    .line 302
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v0, "Null signKeyFormat"

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;->signKeyFormat:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_OpenPgpCapabilities$Builder;--->signKeyFormat(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
