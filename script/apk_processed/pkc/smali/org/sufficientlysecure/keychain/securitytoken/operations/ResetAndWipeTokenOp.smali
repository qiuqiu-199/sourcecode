.class public Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;
.super Ljava/lang/Object;
.source "ResetAndWipeTokenOp.java"


# static fields
.field private static final INVALID_PIN:[B


# instance fields
.field private final connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "XXXXXXXXXXX"

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->INVALID_PIN:[B

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;
    .locals 4

    move-object/16 v1, p0

    .line 35
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;--->create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private exhausePw1Tries()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v5, p0

    .line 69
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    .line 70
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getCommandFactory()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->INVALID_PIN:[B

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createVerifyPw1ForSignatureCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v0

    .line 72
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getOpenPgpCapabilities()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getPw1TriesLeft()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 74
    iget-object v3, v5, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v3

    .line 75
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string v1, "Should never happen, PIN XXXXXXXX has been accepted!"

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;--->exhausePw1Tries()V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private exhaustPw3Tries()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v5, p0

    .line 82
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getCommandFactory()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->INVALID_PIN:[B

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createVerifyPw3Command([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v0

    .line 84
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getOpenPgpCapabilities()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getPw3TriesLeft()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 86
    iget-object v3, v5, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v3

    .line 87
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string v1, "Should never happen, PIN XXXXXXXX has been accepted!"

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;--->exhaustPw3Tries()V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public resetAndWipeToken()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    .line 48
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->exhausePw1Tries()V

    .line 49
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->exhaustPw3Tries()V

    .line 52
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->clearSecureMessaging()V

    .line 56
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getCommandFactory()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createReactivate1Command()Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v0

    .line 57
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    .line 59
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getCommandFactory()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createReactivate2Command()Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v0

    .line 60
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string v2, "Reactivating failed!"

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 65
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->refreshConnectionCapabilities()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/securitytoken/operations/ResetAndWipeTokenOp;--->resetAndWipeToken()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
