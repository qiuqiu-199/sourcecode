.class Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;
.super Ljava/lang/Object;
.source "PgpDecryptVerifyOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncryptStreamResult"
.end annotation


# instance fields
.field cleartextStream:Ljava/io/InputStream;

.field decryptedSessionKey:[B

.field encryptedData:Lorg/bouncycastle/openpgp/PGPEncryptedData;

.field encryptionKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

.field errorResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

.field sessionKey:[B

.field skippedDisallowedEncryptionKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field symmetricEncryptionAlgo:I


# direct methods
.method private constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 207
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 220
    iput v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->symmetricEncryptionAlgo:I

    .line 222
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->skippedDisallowedEncryptionKeys:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 223
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->encryptionKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$1;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;-><init>()V

    return-void
.end method


# virtual methods
.method public with(Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 227
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->errorResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;--->with(Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
