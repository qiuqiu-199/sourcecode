.class public Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;
.source "SecurityTokenOperationActivity.java"


# static fields
.field public static final EXTRA_CRYPTO_INPUT:Ljava/lang/String; = "crypto_input"

.field public static final EXTRA_REQUIRED_INPUT:Ljava/lang/String; = "required_input"

.field public static final RESULT_CRYPTO_INPUT:Ljava/lang/String; = "result_data"

.field public static final RESULT_TOKEN_INFO:Ljava/lang/String; = "token_info"

.field public static final TAG:Ljava/lang/String; = "SecurityTokenOperationActivity"


# instance fields
.field private mInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

.field private mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

.field private mResultTokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

.field public nfcGuideView:Lnordpol/android/NfcGuideView;

.field public vAnimator:Landroid/widget/ViewAnimator;

.field public vErrorText:Landroid/widget/TextView;

.field public vErrorTryAgainButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 63
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->resumeTagHandling()V

    return-void
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->obtainPassphraseIfRequired()V

    return-void
.end method

.method private checkPinAvailability()V
    .locals 7

    move-object/16 v4, p0

    .line 166
    :try_start_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    .line 167
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getSubKeyId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 166
    invoke-static {v4, v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->getCachedPassphrase(Landroid/content/Context;JJ)Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->checkDeviceConnection()V
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$KeyNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .line 172
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "tried to find passphrase for non-existing key. this is a programming error!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;--->checkPinAvailability()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private obtainPassphraseIfRequired()V
    .locals 5

    move-object/16 v2, p0

    .line 147
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_MOVE_KEY_TO_CARD:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    if-eq v0, v1, :cond_0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_RESET_CARD:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    if-eq v0, v1, :cond_0

    .line 149
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->obtainSecurityTokenPin(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)V

    .line 150
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->checkPinAvailability()V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->checkDeviceConnection()V

    :goto_0
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;--->obtainPassphraseIfRequired()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected doSecurityTokenInBackground(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v12, p0

    move-object/16 v13, p1

    .line 192
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$4;->$SwitchMap$org$sufficientlysecure$keychain$service$input$RequiredInputParcel$RequiredInputType:[I

    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x7f11019c

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 309
    new-instance v13, Ljava/lang/AssertionError;

    const-string v0, "Unhandled mRequiredInput.mType"

    invoke-direct {v13, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    .line 303
    :pswitch_0
    invoke-static {v13}, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->resetAndWipeToken()V

    .line 304
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->readTokenInfo()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    move-result-object v13

    iput-object v13, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mResultTokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    goto/16 :goto_4

    .line 258
    :pswitch_1
    new-instance v0, Lorg/sufficientlysecure/keychain/util/Passphrase;

    const-string v1, "12345678"

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-static {v12}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v1

    .line 264
    :try_start_0
    iget-object v3, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getMasterKeyIdBySubkeyId(J)Ljava/lang/Long;

    move-result-object v3

    .line 265
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedSecretKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    move-result-object v1
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    iget-object v3, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    aget-object v2, v3, v2

    .line 271
    iget-object v3, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    .line 273
    :goto_0
    iget-object v5, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 274
    iget-object v5, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    aget-object v5, v5, v4

    .line 275
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 276
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 278
    invoke-virtual {v1, v6, v7}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getSecretKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;

    move-result-object v6

    .line 279
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getOpenPgpCapabilities()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    move-result-object v7

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getAid()[B

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    .line 283
    :try_start_1
    iget-object v8, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    .line 284
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getSubKeyId()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 283
    invoke-static {v12, v8, v9, v10, v11}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->getCachedPassphrase(Landroid/content/Context;JJ)Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v8
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$KeyNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    invoke-static {v13}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;

    move-result-object v9

    .line 290
    invoke-virtual {v9, v6, v8, v0}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->changeKey(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/util/Passphrase;)V

    .line 293
    iget-object v6, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-virtual {v6, v5, v7}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->withCryptoData([B[B)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v5

    iput-object v5, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 286
    :catch_0
    new-instance v13, Ljava/io/IOException;

    const-string v0, "Unable to get cached passphrase!"

    invoke-direct {v13, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 296
    :cond_0
    invoke-static {v13, v0}, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->modifyPw1andPw3Pins([B[B)V

    .line 298
    invoke-static {}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->clearCachedConnections()V

    goto/16 :goto_4

    .line 267
    :catch_1
    new-instance v13, Ljava/io/IOException;

    const-string v0, "Couldn\'t find subkey for key to token operation."

    invoke-direct {v13, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 240
    :pswitch_2
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getOpenPgpCapabilities()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getFingerprintAuth()[B

    move-result-object v0

    .line 239
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getKeyIdFromFingerprint([B)J

    move-result-wide v3

    .line 242
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getSubKeyId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 243
    new-instance v13, Ljava/io/IOException;

    invoke-virtual {v12, v1}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 246
    :cond_1
    invoke-static {v13}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;

    move-result-object v13

    .line 247
    :goto_1
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    array-length v0, v0

    if-ge v2, v0, :cond_4

    .line 248
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    aget-object v0, v0, v2

    .line 249
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignAlgos:[I

    aget v1, v1, v2

    .line 250
    invoke-virtual {v13, v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->calculateAuthenticationSignature([BI)[B

    move-result-object v1

    .line 251
    iget-object v3, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->withCryptoData([B[B)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v0

    iput-object v0, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 221
    :pswitch_3
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getOpenPgpCapabilities()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getFingerprintSign()[B

    move-result-object v0

    .line 220
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getKeyIdFromFingerprint([B)J

    move-result-wide v3

    .line 223
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getSubKeyId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 224
    new-instance v13, Ljava/io/IOException;

    invoke-virtual {v12, v1}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 227
    :cond_2
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignatureTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->withSignatureTime(Ljava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v0

    iput-object v0, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    .line 229
    invoke-static {v13}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;

    move-result-object v13

    .line 230
    :goto_2
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    array-length v0, v0

    if-ge v2, v0, :cond_4

    .line 231
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    aget-object v0, v0, v2

    .line 232
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignAlgos:[I

    aget v1, v1, v2

    .line 233
    invoke-virtual {v13, v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;->calculateSignature([BI)[B

    move-result-object v1

    .line 234
    iget-object v3, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->withCryptoData([B[B)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v0

    iput-object v0, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 195
    :pswitch_4
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getOpenPgpCapabilities()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getFingerprintEncrypt()[B

    move-result-object v0

    .line 194
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getKeyIdFromFingerprint([B)J

    move-result-wide v3

    .line 197
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getSubKeyId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    .line 198
    new-instance v13, Ljava/io/IOException;

    invoke-virtual {v12, v1}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 201
    :cond_3
    invoke-static {v12}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v0

    .line 204
    :try_start_2
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getMasterKeyIdBySubkeyId(J)Ljava/lang/Long;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedPublicKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    move-result-object v0
    :try_end_2
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 210
    invoke-static {v13}, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;->create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;

    move-result-object v13

    .line 211
    :goto_3
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    array-length v1, v1

    if-ge v2, v1, :cond_4

    .line 212
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    aget-object v1, v1, v2

    .line 214
    invoke-virtual {v0, v3, v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getPublicKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v5

    invoke-virtual {v13, v1, v5}, Lorg/sufficientlysecure/keychain/securitytoken/operations/PsoDecryptTokenOp;->verifyAndDecryptSessionKey([BLorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)[B

    move-result-object v5

    .line 215
    iget-object v6, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-virtual {v6, v1, v5}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->withCryptoData([B[B)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v1

    iput-object v1, v12, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void

    .line 207
    :catch_2
    new-instance v13, Ljava/io/IOException;

    const-string v0, "Couldn\'t find subkey for key to token operation."

    invoke-direct {v13, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v14, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;--->doSecurityTokenInBackground(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V"

    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected handleResult(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 359
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result_data"

    .line 361
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 362
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mResultTokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    if-eqz v3, :cond_0

    const-string v3, "token_info"

    .line 363
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mResultTokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const/4 v3, -0x1

    .line 365
    invoke-virtual {v2, v3, v0}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->setResult(ILandroid/content/Intent;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;--->handleResult(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c00e0

    .line 179
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected initTheme()V
    .locals 6

    move-object/16 v3, p0

    .line 85
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;-><init>(Landroid/app/Activity;)V

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mThemeChanger:Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    .line 86
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mThemeChanger:Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    const v1, 0x7f12017b

    const v2, 0x7f120178

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->setThemes(II)V

    .line 88
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mThemeChanger:Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->changeTheme()Z

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;--->initTheme()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    .line 158
    invoke-super {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 160
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->checkPinAvailability()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 93
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "NfcOperationActivity.onCreate"

    const/4 v0, 0x0

    .line 94
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v3, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const v3, 0x7f09024d

    .line 96
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnordpol/android/NfcGuideView;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->nfcGuideView:Lnordpol/android/NfcGuideView;

    .line 99
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/util/OrientationUtils;->lockCurrentOrientation(Landroid/app/Activity;)V

    .line 101
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->setFinishOnTouchOutside(Z)V

    .line 103
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v1, 0x80

    invoke-virtual {v3, v1}, Landroid/view/Window;->addFlags(I)V

    .line 105
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v1, "crypto_input"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    const v3, 0x7f110c8b

    .line 107
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->setTitle(I)V

    const v3, 0x7f090365

    .line 109
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewAnimator;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->vAnimator:Landroid/widget/ViewAnimator;

    .line 110
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->vAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v3, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 112
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->nfcGuideView:Lnordpol/android/NfcGuideView;

    sget-object v0, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->STARTING_POSITION:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    invoke-virtual {v3, v0}, Lnordpol/android/NfcGuideView;->setCurrentStatus(Lnordpol/android/NfcGuideView$NfcGuideViewStatus;)V

    const v3, 0x7f0902b2

    .line 114
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->vErrorText:Landroid/widget/TextView;

    const v3, 0x7f0902b3

    .line 115
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->vErrorTryAgainButton:Landroid/widget/Button;

    .line 116
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->vErrorTryAgainButton:Landroid/widget/Button;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$1;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$1;-><init>(Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0902ac

    .line 128
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 129
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$2;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$2;-><init>(Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 138
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "required_input"

    .line 140
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    .line 142
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->obtainPassphraseIfRequired()V

    return-void
.end method

.method protected onSecurityTokenError(Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 370
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->pauseTagHandling()V

    .line 372
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->vErrorText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f110c8c

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->vAnimator:Landroid/widget/ViewAnimator;

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 375
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->nfcGuideView:Lnordpol/android/NfcGuideView;

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lnordpol/android/NfcGuideView;->setVisibility(I)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;--->onSecurityTokenError(Ljava/lang/String;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSecurityTokenPinError(Ljava/lang/String;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 380
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->onSecurityTokenError(Ljava/lang/String;)V

    .line 383
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    .line 384
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getSubKeyId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 383
    invoke-static {v2, v3, v4, v0, v1}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->clearCachedPassphrase(Landroid/content/Context;JJ)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;--->onSecurityTokenPinError(Ljava/lang/String;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected final onSecurityTokenPostExecute(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 317
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->mInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->handleResult(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    .line 320
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->vAnimator:Landroid/widget/ViewAnimator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 322
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->nfcGuideView:Lnordpol/android/NfcGuideView;

    sget-object v1, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->DONE:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    invoke-virtual {v0, v1}, Lnordpol/android/NfcGuideView;->setCurrentStatus(Lnordpol/android/NfcGuideView$NfcGuideViewStatus;)V

    .line 324
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->isPersistentConnectionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->finish()V

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->clearSecureMessaging()V

    .line 329
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$3;

    invoke-direct {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$3;-><init>(Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 350
    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;--->onSecurityTokenPostExecute(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSecurityTokenPreExecute()V
    .locals 5

    move-object/16 v2, p0

    .line 185
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->vAnimator:Landroid/widget/ViewAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 186
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->nfcGuideView:Lnordpol/android/NfcGuideView;

    sget-object v1, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->TRANSFERRING:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    invoke-virtual {v0, v1}, Lnordpol/android/NfcGuideView;->setCurrentStatus(Lnordpol/android/NfcGuideView$NfcGuideViewStatus;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;--->onSecurityTokenPreExecute()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
