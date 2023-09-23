.class public Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;
.super Ljava/lang/Object;
.source "OpenPgpCommandApduFactory.java"


# static fields
.field private static final AID_SELECT_FILE_OPENPGP:[B

.field private static final CLA:I = 0x0

.field private static final CP_SELECT_DATA_CARD_HOLDER_CERT:[B

.field private static final CRT_GAKP_SECURE_MESSAGING:[B

.field private static final INS_ACTIVATE_FILE:I = 0x44

.field private static final INS_CHANGE_REFERENCE_DATA:I = 0x24

.field private static final INS_GENERATE_ASYMMETRIC_KEY_PAIR:I = 0x47

.field private static final INS_GET_DATA:I = 0xca

.field private static final INS_GET_RESPONSE:I = 0xc0

.field private static final INS_INTERNAL_AUTHENTICATE:I = 0x88

.field private static final INS_PERFORM_SECURITY_OPERATION:I = 0x2a

.field private static final INS_PUT_DATA:I = 0xda

.field private static final INS_PUT_DATA_ODD:I = 0xdb

.field private static final INS_RESET_RETRY_COUNTER:I = 0x2c

.field private static final INS_SELECT_DATA:I = 0xa5

.field private static final INS_SELECT_FILE:I = 0xa4

.field private static final INS_TERMINATE_DF:I = 0xe6

.field private static final INS_VERIFY:I = 0x20

.field private static final MASK_CLA_CHAINING:I = 0x10

.field private static final MAX_APDU_NC:I = 0xfe

.field private static final MAX_APDU_NC_EXT:I = 0xffff

.field private static final MAX_APDU_NE:I = 0x100

.field private static final MAX_APDU_NE_EXT:I = 0x10000

.field private static final P1_EMPTY:I = 0x0

.field private static final P1_GAKP_GENERATE:I = 0x80

.field private static final P1_GAKP_READ_PUBKEY_TEMPLATE:I = 0x81

.field private static final P1_GET_DATA_CARD_HOLDER_CERT:I = 0x7f

.field private static final P1_INTERNAL_AUTH_SECURE_MESSAGING:I = 0x1

.field private static final P1_PSO_COMPUTE_DIGITAL_SIGNATURE:I = 0x9e

.field private static final P1_PSO_DECIPHER:I = 0x80

.field private static final P1_PUT_DATA_ODD_KEY:I = 0x3f

.field private static final P1_RESET_RETRY_COUNTER_NEW_PW:I = 0x2

.field private static final P1_SELECT_DATA_FOURTH:I = 0x3

.field private static final P1_SELECT_FILE:I = 0x4

.field private static final P2_CHANGE_REFERENCE_DATA_PW1:I = 0x81

.field private static final P2_CHANGE_REFERENCE_DATA_PW3:I = 0x83

.field private static final P2_EMPTY:I = 0x0

.field private static final P2_GET_DATA_CARD_HOLDER_CERT:I = 0x21

.field private static final P2_PSO_COMPUTE_DIGITAL_SIGNATURE:I = 0x9a

.field private static final P2_PSO_DECIPHER:I = 0x86

.field private static final P2_PUT_DATA_ODD_KEY:I = 0xff

.field private static final P2_RESET_RETRY_COUNTER:I = 0x81

.field private static final P2_SELECT_DATA:I = 0x4

.field private static final P2_VERIFY_PW1_OTHER:I = 0x82

.field private static final P2_VERIFY_PW1_SIGN:I = 0x81

.field private static final P2_VERIFY_PW3:I = 0x83


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "D27600012401"

    .line 44
    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->AID_SELECT_FILE_OPENPGP:[B

    const-string v0, "60045C027F21"

    .line 75
    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->CP_SELECT_DATA_CARD_HOLDER_CERT:[B

    const-string v0, "A600"

    .line 90
    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->CRT_GAKP_SECURE_MESSAGING:[B

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method createChainedApdus(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;",
            ")",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;",
            ">;"
        }
    .end annotation

    move-object/16 v12, p0

    move-object/16 v13, p1

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getData()[B

    move-result-object v9

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 224
    :goto_0
    array-length v1, v9

    if-ge v6, v1, :cond_3

    const/16 v1, 0xfe

    .line 225
    array-length v2, v9

    sub-int/2addr v2, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v11, v6, v7

    .line 226
    array-length v1, v9

    if-lt v11, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 227
    :goto_1
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getCLA()I

    move-result v2

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    const/16 v3, 0x10

    :goto_2
    add-int/2addr v2, v3

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getNe()I

    move-result v1

    const/16 v3, 0x100

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 232
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getINS()I

    move-result v3

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getP1()I

    move-result v4

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getP2()I

    move-result v5

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v9

    invoke-static/range {v1 .. v8}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[BIII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v1

    goto :goto_3

    .line 234
    :cond_2
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getINS()I

    move-result v3

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getP1()I

    move-result v4

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getP2()I

    move-result v5

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v9

    invoke-static/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[BII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v1

    .line 236
    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v11

    goto :goto_0

    :cond_3
    return-object v0

    const-string v14, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createChainedApdus(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Ljava/util/List;"

    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createChangePw3Command([B[B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 146
    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v3

    const/4 v4, 0x0

    const/16 v0, 0x24

    const/16 v1, 0x83

    .line 145
    invoke-static {v4, v0, v4, v1, v3}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v3

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createChangePw3Command([B[B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createComputeDigitalSignatureCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    const/4 v0, 0x0

    const/16 v1, 0x2a

    const/16 v2, 0x9e

    const/16 v3, 0x9a

    const/high16 v5, 0x10000

    move-object v4, v7

    .line 133
    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[BI)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v7

    return-object v7

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createComputeDigitalSignatureCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createDecipherCommand([BI)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move/16 v8, p2

    const/4 v0, 0x0

    const/16 v1, 0x2a

    const/16 v2, 0x80

    const/16 v3, 0x86

    move-object v4, v7

    move v5, v8

    .line 139
    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[BI)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v7

    return-object v7

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createDecipherCommand([BI)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createGenerateKeyCommand(I)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 10

    move-object/16 v7, p0

    move/16 v8, p1

    const/4 v0, 0x2

    .line 188
    new-array v5, v0, [B

    int-to-byte v8, v8

    const/4 v0, 0x0

    aput-byte v8, v5, v0

    const/4 v8, 0x1

    aput-byte v0, v5, v8

    const/4 v1, 0x0

    const/16 v2, 0x47

    const/16 v3, 0x80

    const/4 v4, 0x0

    const/high16 v6, 0x10000

    invoke-static/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[BI)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v8

    return-object v8

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createGenerateKeyCommand(I)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method createGetDataCardHolderCertCommand()Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 5

    move-object/16 v2, p0

    const/16 v0, 0x7f

    const/16 v1, 0x21

    .line 209
    invoke-virtual {v2, v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createGetDataCommand(II)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createGetDataCardHolderCertCommand()Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method createGetDataCommand(II)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    move/16 v5, p2

    const/4 v0, 0x0

    const/16 v1, 0xca

    const/high16 v2, 0x10000

    .line 112
    invoke-static {v0, v1, v4, v5, v2}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIIII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v4

    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createGetDataCommand(II)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method createGetResponseCommand(I)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    const/4 v0, 0x0

    const/16 v1, 0xc0

    .line 117
    invoke-static {v0, v1, v0, v0, v3}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIIII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createGetResponseCommand(I)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createInternalAuthCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    const/4 v0, 0x0

    const/16 v1, 0x88

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v5, 0x10000

    move-object v4, v7

    .line 183
    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[BI)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v7

    return-object v7

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createInternalAuthCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method createInternalAuthForSecureMessagingCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    const/4 v0, 0x0

    const/16 v1, 0x88

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v5, 0x10000

    move-object v4, v7

    .line 177
    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[BI)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v7

    return-object v7

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createInternalAuthForSecureMessagingCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createPutDataCommand(I[B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    move-object/16 v5, p2

    const v0, 0xff00

    and-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    const/4 v1, 0x0

    const/16 v2, 0xda

    .line 122
    invoke-static {v1, v2, v0, v4, v5}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v4

    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createPutDataCommand(I[B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createPutKeyCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x0

    const/16 v1, 0xdb

    const/16 v2, 0x3f

    const/16 v3, 0xff

    .line 128
    invoke-static {v0, v1, v2, v3, v5}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createPutKeyCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createReactivate1Command()Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 5

    move-object/16 v2, p0

    const/4 v0, 0x0

    const/16 v1, 0xe6

    .line 167
    invoke-static {v0, v1, v0, v0}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createReactivate1Command()Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createReactivate2Command()Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 5

    move-object/16 v2, p0

    const/4 v0, 0x0

    const/16 v1, 0x44

    .line 172
    invoke-static {v0, v1, v0, v0}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createReactivate2Command()Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createResetPw1Command([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x0

    const/16 v1, 0x2c

    const/4 v2, 0x2

    const/16 v3, 0x81

    .line 151
    invoke-static {v0, v1, v2, v3, v5}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createResetPw1Command([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method createRetrieveSecureMessagingPublicKeyCommand()Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 9

    move-object/16 v6, p0

    .line 195
    sget-object v4, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->CRT_GAKP_SECURE_MESSAGING:[B

    const/4 v0, 0x0

    const/16 v1, 0x47

    const/16 v2, 0x81

    const/4 v3, 0x0

    const/high16 v5, 0x10000

    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[BI)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v0

    return-object v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createRetrieveSecureMessagingPublicKeyCommand()Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method createSelectFileCommand(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 107
    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v0, 0x0

    const/16 v1, 0xa4

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, v0, v4}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createSelectFileCommand(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method createSelectFileOpenPgpCommand()Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 7

    move-object/16 v4, p0

    .line 102
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->AID_SELECT_FILE_OPENPGP:[B

    const/4 v1, 0x0

    const/16 v2, 0xa4

    const/4 v3, 0x4

    invoke-static {v1, v2, v3, v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v0

    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createSelectFileOpenPgpCommand()Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method createSelectSecureMessagingCertificateCommand()Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 8

    move-object/16 v5, p0

    .line 203
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->CP_SELECT_DATA_CARD_HOLDER_CERT:[B

    const/4 v1, 0x0

    const/16 v2, 0xa5

    const/4 v3, 0x3

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v4, v0}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v0

    return-object v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createSelectSecureMessagingCertificateCommand()Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method createShortApdu(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    .line 214
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getNe()I

    move-result v0

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 215
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getCLA()I

    move-result v2

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getINS()I

    move-result v3

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getP1()I

    move-result v4

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getP2()I

    move-result v5

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getData()[B

    move-result-object v6

    invoke-static/range {v2 .. v7}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[BI)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v9

    return-object v9

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createShortApdu(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method createVerifyPw1ForOtherCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    const/4 v0, 0x0

    const/16 v1, 0x20

    const/16 v2, 0x82

    .line 97
    invoke-static {v0, v1, v0, v2, v4}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createVerifyPw1ForOtherCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createVerifyPw1ForSignatureCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    const/4 v0, 0x0

    const/16 v1, 0x20

    const/16 v2, 0x81

    .line 157
    invoke-static {v0, v1, v0, v2, v4}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createVerifyPw1ForSignatureCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createVerifyPw3Command([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    const/4 v0, 0x0

    const/16 v1, 0x20

    const/16 v2, 0x83

    .line 162
    invoke-static {v0, v1, v0, v2, v4}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->createVerifyPw3Command([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method isSuitableForShortApdu(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 245
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getData()[B

    move-result-object v2

    array-length v2, v2

    const/16 v0, 0xfe

    if-gt v2, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;--->isSuitableForShortApdu(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
