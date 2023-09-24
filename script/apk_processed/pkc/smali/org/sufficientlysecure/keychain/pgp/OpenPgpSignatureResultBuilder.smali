.class public Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;
.super Ljava/lang/Object;
.source "OpenPgpSignatureResultBuilder.java"


# instance fields
.field private mConfirmedUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInsecure:Z

.field private mIsKeyExpired:Z

.field private mIsKeyRevoked:Z

.field private mIsSignatureKeyCertified:Z

.field private mKeyId:J

.field private final mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

.field private mKnownKey:Z

.field private mPrimaryUserId:Ljava/lang/String;

.field private mSenderAddress:Ljava/lang/String;

.field private mSenderStatusResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

.field private mSignatureAvailable:Z

.field private mSignatureTimestamp:Ljava/util/Date;

.field private mUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValidSignature:Z


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 60
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mUserIds:Ljava/util/List;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mSignatureAvailable:Z

    .line 51
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mKnownKey:Z

    .line 52
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mValidSignature:Z

    .line 53
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mIsSignatureKeyCertified:Z

    .line 54
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mIsKeyRevoked:Z

    .line 55
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mIsKeyExpired:Z

    .line 56
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mInsecure:Z

    .line 61
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;---><init>(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private processSenderStatusResult(Ljava/util/List;Ljava/util/List;)Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 137
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mSenderAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 138
    sget-object v2, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->UNKNOWN:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    return-object v2

    .line 141
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mSenderAddress:Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->userIdListContainsAddress(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    sget-object v2, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->USER_ID_CONFIRMED:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    return-object v2

    .line 143
    :cond_1
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mSenderAddress:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->userIdListContainsAddress(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    sget-object v2, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->USER_ID_UNCONFIRMED:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    return-object v2

    .line 146
    :cond_2
    sget-object v2, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->USER_ID_MISSING:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;--->processSenderStatusResult(Ljava/util/List;Ljava/util/List;)Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static userIdListContainsAddress(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 151
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    invoke-static {v0}, Lorg/openintents/openpgp/util/OpenPgpUtils;->splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v0

    .line 153
    iget-object v0, v0, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;--->userIdListContainsAddress(Ljava/lang/String;Ljava/util/List;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public build()Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 12

    move-object/16 v9, p0

    .line 161
    iget-boolean v0, v9, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mSignatureAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "RESULT_NO_SIGNATURE"

    .line 162
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-static {}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->createWithNoSignature()Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    iget-boolean v0, v9, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mKnownKey:Z

    if-nez v0, :cond_1

    const-string v0, "RESULT_KEY_MISSING"

    .line 167
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-wide v0, v9, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mKeyId:J

    iget-object v2, v9, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mSignatureTimestamp:Ljava/util/Date;

    invoke-static {v0, v1, v2}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->createWithKeyMissing(JLjava/util/Date;)Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v0

    return-object v0

    .line 171
    :cond_1
    iget-boolean v0, v9, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mValidSignature:Z

    if-nez v0, :cond_2

    const-string v0, "RESULT_INVALID_SIGNATURE"

    .line 172
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-static {}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->createWithInvalidSignature()Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v0

    return-object v0

    .line 177
    :cond_2
    iget-boolean v0, v9, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mIsKeyRevoked:Z

    if-eqz v0, :cond_3

    const-string v0, "RESULT_INVALID_KEY_REVOKED"

    .line 178
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    const/4 v1, 0x4

    goto :goto_0

    .line 180
    :cond_3
    iget-boolean v0, v9, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mIsKeyExpired:Z

    if-eqz v0, :cond_4

    const-string v0, "RESULT_INVALID_KEY_EXPIRED"

    .line 181
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x5

    const/4 v1, 0x5

    goto :goto_0

    .line 183
    :cond_4
    iget-boolean v0, v9, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mInsecure:Z

    if-eqz v0, :cond_5

    const-string v0, "RESULT_INVALID_INSECURE"

    .line 184
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x6

    const/4 v1, 0x6

    goto :goto_0

    .line 186
    :cond_5
    iget-boolean v0, v9, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mIsSignatureKeyCertified:Z

    if-eqz v0, :cond_6

    const-string v0, "RESULT_VALID_CONFIRMED"

    .line 187
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const-string v0, "RESULT_VALID_UNCONFIRMED"

    .line 190
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    const/4 v1, 0x3

    .line 194
    :goto_0
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mPrimaryUserId:Ljava/lang/String;

    iget-wide v3, v9, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mKeyId:J

    iget-object v5, v9, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mUserIds:Ljava/util/List;

    iget-object v6, v9, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mConfirmedUserIds:Ljava/util/List;

    iget-object v7, v9, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mSenderStatusResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    iget-object v8, v9, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mSignatureTimestamp:Ljava/util/Date;

    invoke-static/range {v1 .. v8}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->createWithValidSignature(ILjava/lang/String;JLjava/util/List;Ljava/util/List;Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;Ljava/util/Date;)Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v0

    return-object v0

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;--->build()Lorg/openintents/openpgp/OpenPgpSignatureResult;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public initValid(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x1

    .line 114
    invoke-virtual {v7, v0}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setSignatureAvailable(Z)V

    .line 115
    invoke-virtual {v7, v0}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setKnownKey(Z)V

    .line 117
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getKeyRing()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getMasterKeyId()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setKeyId(J)V

    .line 121
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getPrimaryUserIdWithFallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setPrimaryUserId(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getVerified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v2

    sget-object v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->VERIFIED_SECRET:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v7, v2}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setSignatureKeyCertified(Z)V

    .line 124
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getUnorderedUserIds()Ljava/util/ArrayList;

    move-result-object v2

    .line 125
    iget-object v3, v7, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getMasterKeyId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getConfirmedUserIds(J)Ljava/util/List;

    move-result-object v3

    .line 126
    invoke-virtual {v7, v2, v3}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setUserIds(Ljava/util/List;Ljava/util/List;)V

    .line 128
    invoke-direct {v7, v2, v3}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->processSenderStatusResult(Ljava/util/List;Ljava/util/List;)Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    move-result-object v2

    iput-object v2, v7, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mSenderStatusResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 131
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->isExpired()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v7, v2}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setKeyExpired(Z)V

    .line 132
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->isRevoked()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->isRevoked()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_3
    invoke-virtual {v7, v0}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setKeyRevoked(Z)V

    return-void

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;--->initValid(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)V"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isInsecure()Z
    .locals 4

    move-object/16 v1, p0

    .line 110
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mInsecure:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;--->isInsecure()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setInsecure(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 85
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mInsecure:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;--->setInsecure(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setKeyExpired(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 101
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mIsKeyExpired:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;--->setKeyExpired(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setKeyId(J)V
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    .line 69
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mKeyId:J

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;--->setKeyId(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setKeyRevoked(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 97
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mIsKeyRevoked:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;--->setKeyRevoked(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setKnownKey(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 77
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mKnownKey:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;--->setKnownKey(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setPrimaryUserId(Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 65
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mPrimaryUserId:Ljava/lang/String;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;--->setPrimaryUserId(Ljava/lang/String;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSenderAddress(Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 199
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mSenderAddress:Ljava/lang/String;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;--->setSenderAddress(Ljava/lang/String;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSignatureAvailable(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 93
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mSignatureAvailable:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;--->setSignatureAvailable(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSignatureKeyCertified(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 89
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mIsSignatureKeyCertified:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;--->setSignatureKeyCertified(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSignatureTimestamp(Ljava/util/Date;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 73
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mSignatureTimestamp:Ljava/util/Date;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;--->setSignatureTimestamp(Ljava/util/Date;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setUserIds(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 105
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mUserIds:Ljava/util/List;

    .line 106
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mConfirmedUserIds:Ljava/util/List;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;--->setUserIds(Ljava/util/List;Ljava/util/List;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setValidSignature(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 81
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->mValidSignature:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;--->setValidSignature(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
