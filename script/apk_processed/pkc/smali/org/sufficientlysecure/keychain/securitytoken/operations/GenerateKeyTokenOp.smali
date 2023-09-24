.class public Lorg/sufficientlysecure/keychain/securitytoken/operations/GenerateKeyTokenOp;
.super Ljava/lang/Object;
.source "GenerateKeyTokenOp.java"


# instance fields
.field private final connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/GenerateKeyTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/operations/GenerateKeyTokenOp;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)Lorg/sufficientlysecure/keychain/securitytoken/operations/GenerateKeyTokenOp;
    .locals 4

    move-object/16 v1, p0

    .line 33
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/GenerateKeyTokenOp;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/operations/GenerateKeyTokenOp;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/operations/GenerateKeyTokenOp;--->create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)Lorg/sufficientlysecure/keychain/securitytoken/operations/GenerateKeyTokenOp;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public generateKey(Lorg/sufficientlysecure/keychain/util/Passphrase;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    const/16 v0, 0xb6

    if-eq v3, v0, :cond_0

    const/16 v0, 0xb8

    if-eq v3, v0, :cond_0

    const/16 v0, 0xa4

    if-eq v3, v0, :cond_0

    .line 56
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid key slot"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/GenerateKeyTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->verifyAdminPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)V

    .line 61
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/GenerateKeyTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getCommandFactory()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createGenerateKeyCommand(I)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v2

    .line 62
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/GenerateKeyTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_1

    .line 65
    new-instance v2, Ljava/io/IOException;

    const-string v3, "On-card key generation failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_1
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getData()[B

    move-result-object v2

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/operations/GenerateKeyTokenOp;--->generateKey(Lorg/sufficientlysecure/keychain/util/Passphrase;I)[B"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
