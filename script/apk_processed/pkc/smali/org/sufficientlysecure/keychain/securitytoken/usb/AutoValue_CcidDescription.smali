.class final Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;
.super Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;
.source "AutoValue_CcidDescription.java"


# instance fields
.field private final features:I

.field private final maxSlotIndex:B

.field private final protocols:I

.field private final voltageSupport:B


# direct methods
.method constructor <init>(BBII)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    .line 18
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;-><init>()V

    .line 19
    iput-byte v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->maxSlotIndex:B

    .line 20
    iput-byte v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->voltageSupport:B

    .line 21
    iput p0, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->protocols:I

    .line 22
    iput p1, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->features:I

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;---><init>(BBII)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v5, v4, :cond_0

    return v0

    .line 60
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 61
    check-cast v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;

    .line 62
    iget-byte v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->maxSlotIndex:B

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->getMaxSlotIndex()B

    move-result v3

    if-ne v1, v3, :cond_1

    iget-byte v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->voltageSupport:B

    .line 63
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->getVoltageSupport()B

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->protocols:I

    .line 64
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->getProtocols()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->features:I

    .line 65
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->getFeatures()I

    move-result v5

    if-ne v1, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFeatures()I
    .locals 4

    move-object/16 v1, p0

    .line 42
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->features:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;--->getFeatures()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMaxSlotIndex()B
    .locals 4

    move-object/16 v1, p0

    .line 27
    iget-byte v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->maxSlotIndex:B

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;--->getMaxSlotIndex()B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getProtocols()I
    .locals 4

    move-object/16 v1, p0

    .line 37
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->protocols:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;--->getProtocols()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getVoltageSupport()B
    .locals 4

    move-object/16 v1, p0

    .line 32
    iget-byte v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->voltageSupport:B

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;--->getVoltageSupport()B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 6

    move-object/16 v3, p0

    .line 74
    iget-byte v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->maxSlotIndex:B

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 76
    iget-byte v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->voltageSupport:B

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 78
    iget v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->protocols:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 80
    iget v1, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->features:I

    xor-int/2addr v0, v1

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;--->hashCode()I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CcidDescription{maxSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->maxSlotIndex:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voltageSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->voltageSupport:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", protocols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->protocols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", features="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;->features:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
