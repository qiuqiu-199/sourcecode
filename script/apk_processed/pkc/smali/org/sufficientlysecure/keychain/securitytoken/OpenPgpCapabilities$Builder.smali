.class abstract Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
.super Ljava/lang/Object;
.source "OpenPgpCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 144
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 145
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->hasKeyImport(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    .line 146
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->attributesChangable(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    .line 147
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->hasSM(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    .line 148
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->hasAesSm(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    .line 149
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->hasScp11bSm(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private parseDdo(Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 193
    iget-object v5, v5, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;->mSubs:[Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;

    array-length v0, v5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, v5, v1

    .line 194
    iget v3, v2, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mT:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 211
    :pswitch_0
    iget-object v2, v2, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    invoke-direct {v4, v2}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->parseFingerprints([B)V

    goto :goto_1

    .line 208
    :pswitch_1
    iget-object v2, v2, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    invoke-virtual {v4, v2}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->pwStatusBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    goto :goto_1

    .line 205
    :pswitch_2
    iget-object v2, v2, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->authKeyFormat(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    goto :goto_1

    .line 202
    :pswitch_3
    iget-object v2, v2, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->encryptKeyFormat(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    goto :goto_1

    .line 199
    :pswitch_4
    iget-object v2, v2, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->signKeyFormat(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    goto :goto_1

    .line 196
    :pswitch_5
    iget-object v2, v2, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    invoke-direct {v4, v2}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->parseExtendedCaps([B)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;--->parseDdo(Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private parseExtendedCaps([B)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x0

    .line 236
    aget-byte v1, v5, v0

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v4, v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->hasKeyImport(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    .line 237
    aget-byte v1, v5, v0

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4, v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->attributesChangable(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    .line 239
    aget-byte v1, v5, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_5

    .line 240
    invoke-virtual {v4, v2}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->hasSM(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    .line 241
    aget-byte v1, v5, v2

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    .line 242
    :goto_3
    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->hasAesSm(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    const/4 v0, 0x1

    .line 243
    :cond_4
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->hasScp11bSm(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    :cond_5
    const/4 v0, 0x6

    .line 246
    aget-byte v0, v5, v0

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    const/4 v2, 0x7

    aget-byte v2, v5, v2

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->maxCmdLen(Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    .line 247
    aget-byte v0, v5, v1

    shl-int/2addr v0, v1

    const/16 v1, 0x9

    aget-byte v5, v5, v1

    add-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->maxRspLen(Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;--->parseExtendedCaps([B)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private parseFingerprints([B)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 218
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/16 v0, 0x14

    .line 222
    new-array v1, v0, [B

    .line 223
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 224
    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->fingerprintSign([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    .line 226
    new-array v1, v0, [B

    .line 227
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 228
    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->fingerprintEncrypt([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    .line 230
    new-array v0, v0, [B

    .line 231
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 232
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->fingerprintAuth([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;--->parseFingerprints([B)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method abstract aid([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
.end method

.method abstract attributesChangable(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
.end method

.method abstract authKeyFormat(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
.end method

.method abstract build()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;
.end method

.method abstract encryptKeyFormat(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
.end method

.method abstract fingerprintAuth([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
.end method

.method abstract fingerprintEncrypt([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
.end method

.method abstract fingerprintSign([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
.end method

.method abstract hasAesSm(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
.end method

.method abstract hasKeyImport(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
.end method

.method abstract hasSM(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
.end method

.method abstract hasScp11bSm(Z)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
.end method

.method abstract historicalBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
.end method

.method abstract maxCmdLen(Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
.end method

.method abstract maxRspLen(Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
.end method

.method abstract pwStatusBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
.end method

.method abstract signKeyFormat(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
.end method

.method updateWithTLV([Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 153
    array-length v0, v6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    aget-object v0, v6, v2

    iget v0, v0, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mT:I

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    .line 154
    aget-object v6, v6, v2

    check-cast v6, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;

    iget-object v6, v6, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;->mSubs:[Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;

    .line 157
    :cond_0
    array-length v0, v6

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v1, v6, v2

    .line 158
    iget v3, v1, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mT:I

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_3

    const/16 v4, 0x73

    if-eq v3, v4, :cond_2

    const/16 v4, 0x5f52

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 184
    :pswitch_0
    iget-object v1, v1, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    invoke-direct {v5, v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->parseFingerprints([B)V

    goto :goto_1

    .line 181
    :pswitch_1
    iget-object v1, v1, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    invoke-virtual {v5, v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->pwStatusBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    goto :goto_1

    .line 178
    :pswitch_2
    iget-object v1, v1, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->authKeyFormat(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    goto :goto_1

    .line 175
    :pswitch_3
    iget-object v1, v1, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->encryptKeyFormat(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    goto :goto_1

    .line 172
    :pswitch_4
    iget-object v1, v1, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->signKeyFormat(Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    goto :goto_1

    .line 169
    :pswitch_5
    iget-object v1, v1, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    invoke-direct {v5, v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->parseExtendedCaps([B)V

    goto :goto_1

    .line 163
    :cond_1
    iget-object v1, v1, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    invoke-virtual {v5, v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->historicalBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    goto :goto_1

    .line 166
    :cond_2
    check-cast v1, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;

    invoke-direct {v5, v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->parseDdo(Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;)V

    goto :goto_1

    .line 160
    :cond_3
    iget-object v1, v1, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->mV:[B

    invoke-virtual {v5, v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;->aid([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;--->updateWithTLV([Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities$Builder;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
