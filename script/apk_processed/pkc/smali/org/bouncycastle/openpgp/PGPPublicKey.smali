.class public Lorg/bouncycastle/openpgp/PGPPublicKey;
.super Ljava/lang/Object;
.source "PGPPublicKey.java"


# static fields
.field private static final MASTER_KEY_CERTIFICATION_TYPES:[I


# instance fields
.field private fingerprint:[B

.field idSigs:Ljava/util/List;

.field idTrusts:Ljava/util/List;

.field ids:Ljava/util/List;

.field private keyID:J

.field keySigs:Ljava/util/List;

.field private keyStrength:I

.field publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

.field subSigs:Ljava/util/List;

.field trustPk:Lorg/bouncycastle/bcpg/TrustPacket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 38
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->MASTER_KEY_CERTIFICATION_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x13
        0x12
        0x11
        0x10
    .end array-data
.end method

.method constructor <init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/TrustPacket;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    .line 198
    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    .line 199
    iput-object p2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->trustPk:Lorg/bouncycastle/bcpg/TrustPacket;

    .line 200
    iput-object p3, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    .line 201
    iput-object p4, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    .line 202
    iput-object p5, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    .line 203
    iput-object p6, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    .line 205
    invoke-direct {p0, p7}, Lorg/bouncycastle/openpgp/PGPPublicKey;->init(Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/TrustPacket;Ljava/util/List;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    .line 135
    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    .line 136
    iput-object p2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->trustPk:Lorg/bouncycastle/bcpg/TrustPacket;

    .line 137
    iput-object p3, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    .line 139
    invoke-direct {p0, p4}, Lorg/bouncycastle/openpgp/PGPPublicKey;->init(Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    .line 118
    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    .line 122
    invoke-direct {p0, p2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->init(Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    .locals 5

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    .line 163
    iget-object v0, p1, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/bouncycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 169
    :goto_0
    iget-object v2, p1, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 171
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p1, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_0
    iget-object v1, p1, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    .line 177
    :goto_1
    iget-object v1, p1, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 179
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    iget-object v2, p1, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    :cond_1
    iget-object v0, p1, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    .line 184
    iget-wide v0, p1, Lorg/bouncycastle/openpgp/PGPPublicKey;->keyID:J

    iput-wide v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keyID:J

    .line 185
    iget p1, p1, Lorg/bouncycastle/openpgp/PGPPublicKey;->keyStrength:I

    iput p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keyStrength:I

    return-void
.end method

.method private static addCert(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/Object;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 4

    .line 773
    new-instance v0, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-direct {v0, p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    move-object v2, p0

    .line 776
    :goto_0
    iget-object v3, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 778
    iget-object v3, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 780
    iget-object v2, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 786
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 790
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 792
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    iget-object p2, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    iget-object p1, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    iget-object p0, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public static addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 1

    .line 749
    new-instance v0, Lorg/bouncycastle/bcpg/UserIDPacket;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/UserIDPacket;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCert(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/Object;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 2

    .line 982
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    .line 986
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "signature type incorrect for master key revocation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 991
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 993
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "signature type incorrect for sub-key revocation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 997
    :cond_1
    new-instance v0, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-direct {v0, p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 999
    iget-object p0, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 1001
    iget-object p0, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1005
    :cond_2
    iget-object p0, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public static addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 0

    .line 765
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCert(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/Object;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[BLorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 1

    .line 733
    new-instance v0, Lorg/bouncycastle/bcpg/UserIDPacket;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/UserIDPacket;-><init>([B)V

    invoke-static {p0, v0, p2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCert(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/Object;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static addSubkeyBindingCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 4

    .line 954
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 956
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key is already a subkey!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 959
    :cond_0
    new-instance v0, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-direct {v0, p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 962
    new-instance p0, Lorg/bouncycastle/bcpg/PublicSubkeyPacket;

    iget-object v1, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    .line 963
    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result v1

    iget-object v2, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getTime()Ljava/util/Date;

    move-result-object v2

    iget-object v3, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/bcpg/PublicSubkeyPacket;-><init>(ILjava/util/Date;Lorg/bouncycastle/bcpg/BCPGKey;)V

    iput-object p0, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    .line 965
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    .line 966
    iget-object p0, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getExpirationTimeFromSig(ZI)J
    .locals 8

    .line 307
    invoke-virtual {p0, p2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesOfType(I)Ljava/util/Iterator;

    move-result-object p2

    const-wide/16 v0, -0x1

    .line 310
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 312
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPSignature;

    if-eqz p1, :cond_1

    .line 314
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignature;->getKeyID()J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 316
    :cond_1
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashedSubPackets()Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    .line 320
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;->getKeyExpirationTime()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_2

    cmp-long v2, v5, v0

    if-lez v2, :cond_0

    :cond_2
    move-wide v0, v5

    goto :goto_0

    :cond_3
    return-wide v3

    :cond_4
    return-wide v0
.end method

.method private getSignaturesForID(Lorg/bouncycastle/bcpg/UserIDPacket;)Ljava/util/Iterator;
    .locals 2

    const/4 v0, 0x0

    .line 494
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 496
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/bcpg/UserIDPacket;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private init(Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-interface {p1, v1}, Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;->calculateFingerprint(Lorg/bouncycastle/bcpg/PublicKeyPacket;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    .line 60
    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getVersion()I

    move-result p1

    const/4 v1, 0x3

    if-gt p1, v1, :cond_0

    .line 62
    check-cast v0, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    .line 64
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keyID:J

    .line 65
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keyStrength:I

    goto/16 :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    array-length v2, v2

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    const/16 p1, 0x38

    shl-long/2addr v4, p1

    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x7

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    int-to-long v6, p1

    const/16 p1, 0x30

    shl-long/2addr v6, p1

    or-long v8, v4, v6

    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x6

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    const/16 p1, 0x28

    shl-long/2addr v4, p1

    or-long v6, v8, v4

    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x5

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    const/16 p1, 0x20

    shl-long/2addr v4, p1

    or-long v8, v6, v4

    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x4

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    const/16 p1, 0x18

    shl-long/2addr v4, p1

    or-long v6, v8, v4

    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    int-to-long v1, p1

    const/16 p1, 0x10

    shl-long/2addr v1, p1

    or-long v4, v6, v1

    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v1, p1

    shl-long/2addr v1, v3

    or-long v6, v4, v1

    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v1, p1

    or-long v3, v6, v1

    iput-wide v3, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keyID:J

    .line 78
    instance-of p1, v0, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    if-eqz p1, :cond_1

    .line 80
    check-cast v0, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keyStrength:I

    goto :goto_0

    .line 82
    :cond_1
    instance-of p1, v0, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;

    if-eqz p1, :cond_2

    .line 84
    check-cast v0, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keyStrength:I

    goto :goto_0

    .line 86
    :cond_2
    instance-of p1, v0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;

    if-eqz p1, :cond_3

    .line 88
    check-cast v0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keyStrength:I

    goto :goto_0

    .line 90
    :cond_3
    instance-of p1, v0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;

    if-eqz p1, :cond_5

    .line 92
    instance-of p1, v0, Lorg/bouncycastle/bcpg/EdDSAPublicBCPGKey;

    if-eqz p1, :cond_4

    const-string p1, "ed25519"

    .line 95
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/spec/EdDSANamedCurveSpec;->getCurve()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Curve;->getField()Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/Field;->getb()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keyStrength:I

    goto :goto_0

    .line 100
    :cond_4
    check-cast v0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;

    .line 101
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keyStrength:I

    :cond_5
    :goto_0
    return-void
.end method

.method private static removeCert(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/Object;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 3

    .line 848
    new-instance v0, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-direct {v0, p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 851
    :goto_0
    iget-object v2, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_1

    .line 853
    iget-object v2, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 856
    iget-object v1, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 857
    iget-object v1, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 858
    iget-object v1, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private static removeCert(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/Object;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 3

    .line 923
    new-instance v0, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-direct {v0, p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 926
    :goto_0
    iget-object v2, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_1

    .line 928
    iget-object v2, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 930
    iget-object v1, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 1

    .line 899
    new-instance v0, Lorg/bouncycastle/bcpg/UserIDPacket;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/UserIDPacket;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCert(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/Object;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 6

    .line 1022
    new-instance v0, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-direct {v0, p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 1025
    iget-object v1, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1027
    iget-object v1, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 1031
    :cond_0
    iget-object v1, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_6

    .line 1036
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getUserIDs()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1038
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/bcpg/UserIDPacket;

    .line 1039
    invoke-direct {p0, v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesForID(Lorg/bouncycastle/bcpg/UserIDPacket;)Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1041
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-ne p1, v5, :cond_2

    const/4 v1, 0x1

    .line 1044
    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/UserIDPacket;->getRawID()[B

    move-result-object v5

    invoke-static {v0, v5, p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[BLorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-nez v1, :cond_6

    .line 1051
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getUserAttributes()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1053
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    .line 1054
    invoke-virtual {p0, v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesForUserAttribute(Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;)Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1056
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_5

    .line 1059
    invoke-static {v0, v2, p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method public static removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 0

    .line 813
    invoke-static {p0, p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCert(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/Object;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 0

    .line 915
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCert(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/Object;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 1

    .line 841
    new-instance v0, Lorg/bouncycastle/bcpg/UserIDPacket;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/UserIDPacket;-><init>([B)V

    invoke-static {p0, v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCert(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/Object;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static removeCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;[BLorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 1

    .line 883
    new-instance v0, Lorg/bouncycastle/bcpg/UserIDPacket;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/UserIDPacket;-><init>([B)V

    invoke-static {p0, v0, p2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->removeCert(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/Object;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 617
    instance-of v0, p1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    if-eqz v0, :cond_0

    .line 619
    check-cast p1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    goto :goto_0

    .line 623
    :cond_0
    new-instance v0, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    .line 626
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    .line 627
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->trustPk:Lorg/bouncycastle/bcpg/TrustPacket;

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->trustPk:Lorg/bouncycastle/bcpg/TrustPacket;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    .line 632
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 634
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 636
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 639
    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_7

    .line 641
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/bcpg/UserIDPacket;

    if-eqz v2, :cond_3

    .line 643
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/bcpg/UserIDPacket;

    .line 645
    invoke-virtual {p1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    goto :goto_3

    .line 649
    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    .line 651
    new-instance v3, Lorg/bouncycastle/bcpg/UserAttributePacket;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;->toSubpacketArray()[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/bouncycastle/bcpg/UserAttributePacket;-><init>([Lorg/bouncycastle/bcpg/UserAttributeSubpacket;)V

    invoke-virtual {p1, v3}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    .line 654
    :goto_3
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 656
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/bcpg/ContainedPacket;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    .line 659
    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    .line 660
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 662
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v4, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 668
    :cond_6
    :goto_5
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_7

    .line 670
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method public getAlgorithm()I
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result v0

    return v0
.end method

.method public getBitStrength()I
    .locals 1

    .line 403
    iget v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keyStrength:I

    return v0
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 606
    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->encode(Ljava/io/OutputStream;)V

    .line 608
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getFingerprint()[B
    .locals 4

    .line 354
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 356
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->fingerprint:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getKeyID()J
    .locals 2

    .line 344
    iget-wide v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keyID:J

    return-wide v0
.end method

.method public getKeySignatures()Ljava/util/Iterator;
    .locals 2

    .line 583
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 586
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 588
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 592
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;
    .locals 1

    .line 598
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    return-object v0
.end method

.method public getRawUserIDs()Ljava/util/Iterator;
    .locals 3

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 436
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 438
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/bcpg/UserIDPacket;

    if-eqz v2, :cond_0

    .line 440
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/bcpg/UserIDPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/UserIDPacket;->getRawID()[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSignatures()Ljava/util/Iterator;
    .locals 3

    .line 557
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    if-nez v0, :cond_1

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 561
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 563
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 565
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 568
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 572
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSignaturesForID(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1

    .line 476
    new-instance v0, Lorg/bouncycastle/bcpg/UserIDPacket;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/UserIDPacket;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesForID(Lorg/bouncycastle/bcpg/UserIDPacket;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getSignaturesForID([B)Ljava/util/Iterator;
    .locals 1

    .line 488
    new-instance v0, Lorg/bouncycastle/bcpg/UserIDPacket;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/UserIDPacket;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignaturesForID(Lorg/bouncycastle/bcpg/UserIDPacket;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getSignaturesForUserAttribute(Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;)Ljava/util/Iterator;
    .locals 2

    const/4 v0, 0x0

    .line 514
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 516
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSignaturesOfType(I)Ljava/util/Iterator;
    .locals 4

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 535
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getSignatures()Ljava/util/Iterator;

    move-result-object v1

    .line 537
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 539
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPSignature;

    .line 541
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 543
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 547
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getUserAttributes()Ljava/util/Iterator;
    .locals 3

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 456
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 458
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    if-eqz v2, :cond_0

    .line 460
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getUserIDs()Ljava/util/Iterator;
    .locals 3

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 415
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 417
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/bcpg/UserIDPacket;

    if-eqz v2, :cond_0

    .line 419
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/bcpg/UserIDPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/UserIDPacket;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getValidSeconds()J
    .locals 6

    .line 271
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 273
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    .line 275
    :goto_0
    sget-object v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->MASTER_KEY_CERTIFICATION_TYPES:[I

    array-length v0, v0

    if-eq v1, v0, :cond_2

    .line 277
    sget-object v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->MASTER_KEY_CERTIFICATION_TYPES:[I

    aget v0, v0, v1

    const/4 v4, 0x1

    invoke-direct {p0, v4, v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getExpirationTimeFromSig(ZI)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-ltz v0, :cond_0

    return-wide v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x18

    .line 287
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getExpirationTimeFromSig(ZI)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    return-wide v0

    :cond_2
    return-wide v2

    .line 299
    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getValidDays()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x18

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasRevocation()Z
    .locals 5

    .line 696
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 698
    iget-object v3, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 700
    iget-object v3, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    move v0, v4

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 708
    iget-object v3, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 710
    iget-object v3, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->getSignatureType()I

    move-result v0

    const/16 v3, 0x28

    if-ne v0, v3, :cond_2

    move v0, v4

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    return v1
.end method

.method public isMasterKey()Z
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
