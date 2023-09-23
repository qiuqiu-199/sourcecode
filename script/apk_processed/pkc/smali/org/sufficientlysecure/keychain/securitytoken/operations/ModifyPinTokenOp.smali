.class public Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;
.super Ljava/lang/Object;
.source "ModifyPinTokenOp.java"


# static fields
.field private static final MIN_PW3_LENGTH:I = 0x8


# instance fields
.field private final adminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

.field private final connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;Lorg/sufficientlysecure/keychain/util/Passphrase;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 41
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    .line 43
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->adminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;Lorg/sufficientlysecure/keychain/util/Passphrase;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 37
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;Lorg/sufficientlysecure/keychain/util/Passphrase;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;--->create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private modifyPw1PinWithEffectiveAdminPin(Lorg/sufficientlysecure/keychain/util/Passphrase;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 58
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->verifyAdminPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)V

    .line 60
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getOpenPgpCapabilities()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getPw3MaxLength()I

    move-result v3

    .line 61
    array-length v0, v4

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    array-length v0, v4

    if-le v0, v3, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getCommandFactory()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createResetPw1Command([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v3

    .line 66
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_1

    .line 69
    new-instance v4, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string v0, "Failed to change PIN"

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw()I

    move-result v3

    invoke-direct {v4, v0, v3}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;I)V

    throw v4

    :cond_1
    return-void

    .line 62
    :cond_2
    :goto_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid PIN length"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;--->modifyPw1PinWithEffectiveAdminPin(Lorg/sufficientlysecure/keychain/util/Passphrase;[B)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private modifyPw3Pin([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 78
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getOpenPgpCapabilities()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getPw3MaxLength()I

    move-result v0

    .line 80
    array-length v1, v4

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    array-length v1, v4

    if-le v1, v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->adminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Passphrase;->toStringUnsafe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 86
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getCommandFactory()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createChangePw3Command([B[B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v4

    .line 87
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v4

    .line 89
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->invalidatePw3()V

    .line 91
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string v1, "Failed to change PIN"

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw()I

    move-result v4

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    return-void

    .line 81
    :cond_2
    :goto_0
    new-instance v4, Ljava/io/IOException;

    const-string v0, "Invalid PIN length"

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;--->modifyPw3Pin([B)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public modifyPw1Pin([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 54
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->adminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-direct {v1, v0, v2}, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->modifyPw1PinWithEffectiveAdminPin(Lorg/sufficientlysecure/keychain/util/Passphrase;[B)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;--->modifyPw1Pin([B)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public modifyPw1andPw3Pins([B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 49
    invoke-direct {v2, v4}, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->modifyPw3Pin([B)V

    .line 50
    new-instance v0, Lorg/sufficientlysecure/keychain/util/Passphrase;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->modifyPw1PinWithEffectiveAdminPin(Lorg/sufficientlysecure/keychain/util/Passphrase;[B)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;--->modifyPw1andPw3Pins([B[B)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
