.class public Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;
.super Ljava/lang/Object;
.source "SubkeyStatusDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubKeyItem"
.end annotation


# instance fields
.field final mCanCertify:Z

.field final mCanEncrypt:Z

.field final mCanSign:Z

.field final mCreation:Ljava/util/Date;

.field public final mExpiry:Ljava/util/Date;

.field public final mIsExpired:Z

.field public final mIsRevoked:Z

.field final mKeyId:J

.field public final mSecretKeyType:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

.field public final mSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;


# direct methods
.method constructor <init>(JLorg/sufficientlysecure/keychain/model/SubKey;)V
    .locals 11

    move-object/16 v8, p0

    move-wide/16 v9, p1

    move-object/16 p0, p3

    .line 186
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_id()J

    move-result-wide v0

    iput-wide v0, v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mKeyId:J

    .line 188
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey;->creation()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mCreation:Ljava/util/Date;

    .line 190
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey;->has_secret()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v0

    iput-object v0, v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecretKeyType:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    .line 192
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey;->is_revoked()Z

    move-result v0

    iput-boolean v0, v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mIsRevoked:Z

    .line 193
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey;->expiry()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey;->expiry()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_0
    iput-object v0, v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mExpiry:Ljava/util/Date;

    .line 194
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mExpiry:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mExpiry:Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mIsExpired:Z

    .line 196
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey;->can_certify()Z

    move-result v0

    iput-boolean v0, v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mCanCertify:Z

    .line 197
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey;->can_sign()Z

    move-result v0

    iput-boolean v0, v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mCanSign:Z

    .line 198
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey;->can_encrypt()Z

    move-result v0

    iput-boolean v0, v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mCanEncrypt:Z

    .line 200
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey;->algorithm()I

    move-result v5

    .line 201
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_size()Ljava/lang/Integer;

    move-result-object v6

    .line 202
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_curve_oid()Ljava/lang/String;

    move-result-object v7

    .line 204
    iget-wide v3, v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mKeyId:J

    move-wide v1, v9

    invoke-static/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->getKeySecurityProblem(JJILjava/lang/Integer;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    move-result-object v9

    iput-object v9, v8, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;---><init>(JLorg/sufficientlysecure/keychain/model/SubKey;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public isValid()Z
    .locals 4

    move-object/16 v1, p0

    .line 213
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mIsRevoked:Z

    if-nez v0, :cond_0

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mIsExpired:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;--->isValid()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public newerThan(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 209
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mCreation:Ljava/util/Date;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mCreation:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;--->newerThan(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
