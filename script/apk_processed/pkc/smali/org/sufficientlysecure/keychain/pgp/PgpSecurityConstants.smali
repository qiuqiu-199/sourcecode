.class public Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;
.super Ljava/lang/Object;
.source "PgpSecurityConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants$OpenKeychainCompressionAlgorithmTags;,
        Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants$OpenKeychainHashAlgorithmTags;,
        Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants$OpenKeychainSymmetricKeyAlgorithmTags;
    }
.end annotation


# static fields
.field public static final CERTIFY_HASH_ALGO:I = 0xa

.field public static final DEFAULT_COMPRESSION_ALGORITHM:I = 0x1

.field public static final DEFAULT_HASH_ALGORITHM:I = 0xa

.field public static final DEFAULT_SYMMETRIC_ALGORITHM:I = 0x9

.field public static final PREFERRED_COMPRESSION_ALGORITHMS:[I

.field public static final PREFERRED_HASH_ALGORITHMS:[I

.field public static final PREFERRED_SYMMETRIC_ALGORITHMS:[I

.field public static final SECRET_KEY_BINDING_SIGNATURE_HASH_ALGO:I = 0xa

.field public static final SECRET_KEY_ENCRYPTOR_HASH_ALGO:I = 0xa

.field public static final SECRET_KEY_ENCRYPTOR_S2K_COUNT:I = 0x90

.field public static final SECRET_KEY_ENCRYPTOR_SYMMETRIC_ALGO:I = 0x9

.field public static final SECRET_KEY_SIGNATURE_CHECKSUM_HASH_ALGO:I = 0x2

.field private static sCurveWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHashAlgorithmsWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSymmetricAlgorithmsWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 59
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x1

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x2

    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v6, 0x3

    .line 64
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v4

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    const/16 v7, 0x8

    .line 69
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v2, v9

    const/16 v8, 0x9

    .line 70
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x5

    aput-object v10, v2, v11

    const/16 v10, 0xa

    .line 71
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v2, v13

    .line 59
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->sSymmetricAlgorithmsWhitelist:Ljava/util/HashSet;

    .line 96
    new-instance v0, Ljava/util/HashSet;

    new-array v2, v11, [Ljava/lang/Integer;

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v5

    .line 99
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v3

    .line 104
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v4

    .line 105
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v6

    .line 106
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v9

    .line 96
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->sHashAlgorithmsWhitelist:Ljava/util/HashSet;

    .line 127
    new-instance v0, Ljava/util/HashSet;

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "P-256"

    .line 128
    invoke-static {v7}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    const-string v7, "P-384"

    .line 129
    invoke-static {v7}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    const-string v7, "P-521"

    .line 130
    invoke-static {v7}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    const-string v4, "secp256k1"

    .line 131
    invoke-static {v4}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const-string v4, "brainpoolP256r1"

    .line 132
    invoke-static {v4}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    const-string v4, "brainpoolP384r1"

    .line 133
    invoke-static {v4}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v11

    const-string v4, "brainpoolP512r1"

    .line 134
    invoke-static {v4}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v13

    const-string v4, "curve25519"

    .line 135
    invoke-static {v4}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 127
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->sCurveWhitelist:Ljava/util/HashSet;

    .line 197
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->PREFERRED_SYMMETRIC_ALGORITHMS:[I

    .line 210
    new-array v0, v3, [I

    aput v10, v0, v5

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->PREFERRED_HASH_ALGORITHMS:[I

    .line 221
    new-array v0, v3, [I

    aput v3, v0, v5

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->PREFERRED_COMPRESSION_ALGORITHMS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0x8
        0x7
    .end array-data

    const-string v14, "M_InsDal"

    const-string v15, "Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;---><clinit>()V"

    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 53
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static checkForSecurityProblems(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;
    .locals 11

    move-object/16 v8, p0

    .line 139
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyRing()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getMasterKeyId()J

    move-result-wide v1

    .line 140
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyId()J

    move-result-wide v3

    .line 141
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getAlgorithm()I

    move-result v5

    .line 142
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getBitStrength()Ljava/lang/Integer;

    move-result-object v6

    .line 143
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getCurveOid()Ljava/lang/String;

    move-result-object v7

    .line 145
    invoke-static/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->getKeySecurityProblem(JJILjava/lang/Integer;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    move-result-object v8

    return-object v8

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;--->checkForSecurityProblems(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static checkSecureSymmetricAlgorithm(I[B)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;
    .locals 5

    move/16 v2, p0

    move-object/16 v3, p1

    .line 78
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->sSymmetricAlgorithmsWhitelist:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureEncryptionAlgorithm;

    invoke-direct {v0, v3, v2}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureEncryptionAlgorithm;-><init>([BI)V

    return-object v0

    :cond_0
    const/4 v2, 0x0

    return-object v2

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;--->checkSecureSymmetricAlgorithm(I[B)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static checkSignatureAlgorithmForSecurityProblems(I)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;
    .locals 5

    move/16 v2, p0

    .line 111
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->sHashAlgorithmsWhitelist:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;-><init>(I)V

    return-object v0

    :cond_0
    const/4 v2, 0x0

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;--->checkSignatureAlgorithmForSecurityProblems(I)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getKeySecurityProblem(JJILjava/lang/Integer;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;
    .locals 12

    move-wide/16 v9, p0

    move-wide/16 v11, p2

    move/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    const/4 v0, 0x1

    const/16 v1, 0x800

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    const/16 v0, 0x16

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    .line 185
    new-instance v7, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$UnidentifiedKeyProblem;

    move-object v0, v7

    move-wide v1, v9

    move-wide v3, v11

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$UnidentifiedKeyProblem;-><init>(JJI)V

    return-object v7

    .line 173
    :pswitch_0
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->sCurveWhitelist:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    new-instance v7, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$NotWhitelistedCurve;

    move-object v0, v7

    move-wide v1, v9

    move-wide v3, v11

    move-object v5, p3

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$NotWhitelistedCurve;-><init>(JJLjava/lang/String;I)V

    return-object v7

    :cond_0
    return-object v2

    .line 166
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 167
    new-instance v7, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v0, v7

    move-wide v1, v9

    move-wide v3, v11

    move v5, p1

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;-><init>(JJII)V

    return-object v7

    :cond_1
    return-object v2

    .line 160
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 161
    new-instance v7, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v0, v7

    move-wide v1, v9

    move-wide v3, v11

    move v5, p1

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;-><init>(JJII)V

    return-object v7

    :cond_2
    return-object v2

    :cond_3
    return-object v2

    .line 153
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_5

    .line 154
    new-instance v7, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v0, v7

    move-wide v1, v9

    move-wide v3, v11

    move v5, p1

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;-><init>(JJII)V

    return-object v7

    :cond_5
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;--->getKeySecurityProblem(JJILjava/lang/Integer;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
