.class Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$1;
.super Ljava/lang/Object;
.source "NfcSyncPGPContentSignerBuilder.java"

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->build(IJ)Lorg/bouncycastle/openpgp/operator/PGPContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;

.field final synthetic val$digestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

.field final synthetic val$keyID:J

.field final synthetic val$signatureType:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;IJLorg/bouncycastle/openpgp/operator/PGPDigestCalculator;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;

    iput p2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$1;->val$signatureType:I

    iput-wide p3, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$1;->val$keyID:J

    iput-object p5, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDigest()[B
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object v0

    return-object v0
.end method

.method public getHashAlgorithm()I
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->access$000(Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;)I

    move-result v0

    return v0
.end method

.method public getKeyAlgorithm()I
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->access$100(Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;)I

    move-result v0

    return v0
.end method

.method public getKeyID()J
    .locals 2

    .line 119
    iget-wide v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$1;->val$keyID:J

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 3

    .line 128
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object v0

    .line 129
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;

    invoke-static {v2}, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->access$200(Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;->access$200(Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 135
    :cond_0
    new-instance v1, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$1;->getHashAlgorithm()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;-><init>([BI)V

    throw v1
.end method

.method public getType()I
    .locals 1

    .line 104
    iget v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$1;->val$signatureType:I

    return v0
.end method
