.class Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;
.super Ljava/lang/Object;
.source "JcaPGPContentVerifierBuilderProvider.java"

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->build(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;

.field final synthetic val$publicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

.field final synthetic val$signature:Ljava/security/Signature;


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/security/Signature;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;->this$1:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;

    iput-object p2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;->val$publicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iput-object p3, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;->val$signature:Ljava/security/Signature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 108
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/SignatureOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;->val$signature:Ljava/security/Signature;

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/SignatureOutputStream;-><init>(Ljava/security/Signature;)V

    return-object v0
.end method

.method public verify([B)Z
    .locals 3

    .line 98
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;->val$signature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 102
    new-instance v0, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to verify signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
