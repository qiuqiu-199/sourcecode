.class Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;
.super Ljava/lang/Object;
.source "JcePublicKeyDataDecryptorFactoryBuilder.java"

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->build(Lorg/bouncycastle/openpgp/PGPPrivateKey;)Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

.field final synthetic val$privKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;Lorg/bouncycastle/openpgp/PGPPrivateKey;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

    iput-object p2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;->val$privKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDataDecryptor(ZI[B)Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->access$100(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;)Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createDataDecryptor(ZI[B)Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;

    move-result-object p1

    return-object p1
.end method

.method public recoverSessionData(I[[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    .line 130
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;->val$privKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    .line 132
    sget-object v0, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->CV25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;->val$privKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->access$200(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;Lorg/bouncycastle/openpgp/PGPPrivateKey;[[B)[B

    move-result-object p1

    return-object p1

    .line 138
    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->access$300(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;->val$privKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-static {p1, v0, v1, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->access$400(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;Lorg/bouncycastle/openpgp/PGPPrivateKey;[[B)[B

    move-result-object p1

    return-object p1

    .line 142
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

    invoke-static {v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->access$300(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;->val$privKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPrivateKey(Lorg/bouncycastle/openpgp/PGPPrivateKey;)Ljava/security/PrivateKey;

    move-result-object v1

    invoke-static {v0, p1, v1, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->access$000(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;ILjava/security/PrivateKey;[[B)[B

    move-result-object p1

    return-object p1
.end method
