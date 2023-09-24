.class Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder$1;
.super Ljava/lang/Object;
.source "EdDsaAuthenticationContentSignerBuilder.java"

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;->build(IJLjava/security/PrivateKey;)Lorg/bouncycastle/openpgp/operator/PGPContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;

.field final synthetic val$keyID:J

.field final synthetic val$signature:Ljava/security/Signature;

.field final synthetic val$signatureType:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;IJLjava/security/Signature;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;

    iput p2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder$1;->val$signatureType:I

    iput-wide p3, p0, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder$1;->val$keyID:J

    iput-object p5, p0, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder$1;->val$signature:Ljava/security/Signature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDigest()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHashAlgorithm()I
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;->access$000(Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;)I

    move-result v0

    return v0
.end method

.method public getKeyAlgorithm()I
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;->access$100(Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder;)I

    move-result v0

    return v0
.end method

.method public getKeyID()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder$1;->val$keyID:J

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 77
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/SignatureOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder$1;->val$signature:Ljava/security/Signature;

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/SignatureOutputStream;-><init>(Ljava/security/Signature;)V

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    .line 82
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder$1;->val$signature:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getType()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/EdDsaAuthenticationContentSignerBuilder$1;->val$signatureType:I

    return v0
.end method
