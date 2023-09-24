.class public Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;
.super Ljava/lang/Object;
.source "SecurityTokenPsoSignTokenOp.java"


# instance fields
.field private final connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 48
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;
    .locals 4

    move-object/16 v1, p0

    .line 45
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;--->create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private encodeSignature([BLorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    .line 122
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp$1;->$SwitchMap$org$sufficientlysecure$keychain$securitytoken$KeyFormat$KeyFormatType:[I

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->keyFormatType()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 134
    :pswitch_0
    array-length v8, v7

    const/4 v0, 0x2

    rem-int/2addr v8, v0

    if-eqz v8, :cond_0

    .line 135
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Bad signature length!"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 137
    :cond_0
    array-length v8, v7

    div-int/2addr v8, v0

    new-array v8, v8, [B

    .line 138
    array-length v1, v7

    div-int/2addr v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 139
    :goto_0
    array-length v4, v8

    if-ge v3, v4, :cond_1

    .line 140
    aget-byte v4, v7, v3

    aput-byte v4, v8, v3

    .line 141
    array-length v4, v8

    add-int/2addr v4, v3

    aget-byte v4, v7, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    :cond_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 144
    new-instance v3, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v3, v7}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 145
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v5, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>([B)V

    aput-object v5, v0, v2

    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v8, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>([B)V

    const/4 v1, 0x1

    aput-object v8, v0, v1

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 146
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->flush()V

    .line 147
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    goto :goto_1

    .line 125
    :pswitch_1
    check-cast v8, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;->getModulusLength()I

    move-result v8

    .line 126
    array-length v0, v7

    div-int/lit8 v8, v8, 0x8

    if-eq v0, v8, :cond_2

    .line 127
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad signature length! Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " bytes, got "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-object v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;--->encodeSignature([BLorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)[B"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private prepareData([BILorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    .line 106
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp$1;->$SwitchMap$org$sufficientlysecure$keychain$securitytoken$KeyFormat$KeyFormatType:[I

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->keyFormatType()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 115
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not supported key type!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :pswitch_0
    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->prepareDsi([BI)[B

    move-result-object v2

    :pswitch_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;--->prepareData([BILorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)[B"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private prepareDsi([BI)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x14

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 99
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Not supported hash algo!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 75
    :pswitch_0
    array-length v4, v3

    const/16 v0, 0x1c

    if-eq v4, v0, :cond_0

    .line 76
    new-instance v4, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad hash length ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", expected 28!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const-string v4, "302D300D06096086480165030402040500041C"

    .line 78
    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v3

    goto/16 :goto_0

    .line 93
    :pswitch_1
    array-length v4, v3

    const/16 v0, 0x40

    if-eq v4, v0, :cond_1

    .line 94
    new-instance v4, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad hash length ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", expected 64!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const-string v4, "3051300D060960864801650304020305000440"

    .line 96
    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v3

    goto/16 :goto_0

    .line 87
    :pswitch_2
    array-length v4, v3

    const/16 v0, 0x30

    if-eq v4, v0, :cond_2

    .line 88
    new-instance v4, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad hash length ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", expected 48!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const-string v4, "3041300D060960864801650304020205000430"

    .line 90
    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v3

    goto/16 :goto_0

    .line 81
    :pswitch_3
    array-length v4, v3

    const/16 v0, 0x20

    if-eq v4, v0, :cond_3

    .line 82
    new-instance v4, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad hash length ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", expected 32!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const-string v4, "3031300D060960864801650304020105000420"

    .line 84
    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v3

    goto :goto_0

    .line 69
    :pswitch_4
    array-length v4, v3

    if-eq v4, v0, :cond_4

    .line 70
    new-instance v4, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad hash length ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", expected 20!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    const-string v4, "3021300906052B2403020105000414"

    .line 72
    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v3

    goto :goto_0

    .line 58
    :pswitch_5
    array-length v4, v3

    if-eq v4, v0, :cond_5

    .line 59
    new-instance v4, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad hash length ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", expected 10!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    const-string v4, "3021300906052B0E03021A05000414"

    .line 61
    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v3

    :goto_0
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;--->prepareDsi([BI)[B"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public calculateAuthenticationSignature([BI)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 191
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->verifyPinForOther()V

    .line 193
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getOpenPgpCapabilities()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getAuthKeyFormat()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v0

    .line 196
    invoke-direct {v1, v2, v3, v0}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->prepareData([BILorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)[B

    move-result-object v2

    .line 199
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getCommandFactory()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createInternalAuthCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v2

    .line 200
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v2

    .line 202
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    new-instance v3, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string v0, "Failed to sign"

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw()I

    move-result v2

    invoke-direct {v3, v0, v2}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 206
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->encodeSignature([BLorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)[B

    move-result-object v2

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;--->calculateAuthenticationSignature([BI)[B"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public calculateSignature([BI)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 164
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->verifyPinForSignature()V

    .line 166
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getOpenPgpCapabilities()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getSignKeyFormat()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v0

    .line 169
    invoke-direct {v1, v2, v3, v0}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->prepareData([BILorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)[B

    move-result-object v2

    .line 172
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getCommandFactory()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createComputeDigitalSignatureCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v2

    .line 173
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v2

    .line 175
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->invalidateSingleUsePw1()V

    .line 177
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    new-instance v3, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string v0, "Failed to sign"

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw()I

    move-result v2

    invoke-direct {v3, v0, v2}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 181
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->encodeSignature([BLorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)[B

    move-result-object v2

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;--->calculateSignature([BI)[B"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
