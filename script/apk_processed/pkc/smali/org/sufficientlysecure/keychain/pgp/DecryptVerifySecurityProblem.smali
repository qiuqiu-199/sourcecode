.class public Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;
.super Ljava/lang/Object;
.source "DecryptVerifySecurityProblem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;
    }
.end annotation


# instance fields
.field public final encryptionKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

.field public final signatureSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;

.field public final signingKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

.field public final symmetricSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 34
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->access$000(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->encryptionKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    .line 36
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->access$100(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->signingKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    .line 37
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->access$200(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->symmetricSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;

    .line 38
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->access$300(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->signatureSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;---><init>(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;-><init>(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;)V

    return-void
.end method


# virtual methods
.method public getPrioritySecurityProblem()Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;
    .locals 5

    move-object/16 v2, p0

    .line 42
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->encryptionKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->encryptionKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    return-object v0

    .line 44
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->signingKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->signingKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    return-object v0

    .line 46
    :cond_1
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->symmetricSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->symmetricSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;

    return-object v0

    .line 48
    :cond_2
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->signatureSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;

    if-eqz v0, :cond_3

    .line 49
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->signatureSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;

    return-object v0

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No security problem?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;--->getPrioritySecurityProblem()Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
