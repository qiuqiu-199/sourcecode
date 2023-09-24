.class Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;
.super Ljava/lang/Object;
.source "DecryptVerifySecurityProblem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DecryptVerifySecurityProblemBuilder"
.end annotation


# instance fields
.field private encryptionKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

.field private signatureSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;

.field private signingKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

.field private symmetricSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 55
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->encryptionKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->signingKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->symmetricSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;

    return-object p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->signatureSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;

    return-object p0
.end method


# virtual methods
.method addEncryptionKeySecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 62
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->encryptionKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;--->addEncryptionKeySecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method addSignatureSecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 74
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->signatureSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;--->addSignatureSecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method addSigningKeyProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 66
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->signingKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;--->addSigningKeyProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method addSymmetricSecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 70
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->symmetricSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;--->addSymmetricSecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public build()Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;
    .locals 5

    move-object/16 v2, p0

    .line 78
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->encryptionKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->signingKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    if-nez v0, :cond_0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->symmetricSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;

    if-nez v0, :cond_0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->signatureSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;

    if-nez v0, :cond_0

    return-object v1

    .line 82
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;-><init>(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$1;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;--->build()Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
