.class final Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;
.super Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
.source "$AutoValue_SaveKeyringParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private addSubKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;",
            ">;"
        }
    .end annotation
.end field

.field private addUserAttribute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private addUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private changePrimaryUserId:Ljava/lang/String;

.field private changeSubKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;",
            ">;"
        }
    .end annotation
.end field

.field private fingerprint:[B

.field private masterKeyId:Ljava/lang/Long;

.field private newUnlock:Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

.field private revokeSubKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private revokeUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private securityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

.field private securityTokenPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

.field private shouldUpload:Ljava/lang/Boolean;

.field private shouldUploadAtomic:Ljava/lang/Boolean;

.field private uploadKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 269
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 271
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;-><init>()V

    .line 272
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->masterKeyId:Ljava/lang/Long;

    .line 273
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getFingerprint()[B

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->fingerprint:[B

    .line 274
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddUserIds()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->addUserIds:Ljava/util/List;

    .line 275
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddUserAttribute()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->addUserAttribute:Ljava/util/List;

    .line 276
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddSubKeys()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->addSubKeys:Ljava/util/List;

    .line 277
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getChangeSubKeys()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->changeSubKeys:Ljava/util/List;

    .line 278
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getChangePrimaryUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->changePrimaryUserId:Ljava/lang/String;

    .line 279
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getRevokeUserIds()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->revokeUserIds:Ljava/util/List;

    .line 280
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getRevokeSubKeys()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->revokeSubKeys:Ljava/util/List;

    .line 281
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getSecurityTokenPin()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->securityTokenPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 282
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getSecurityTokenAdminPin()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->securityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 283
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->isShouldUpload()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->shouldUpload:Ljava/lang/Boolean;

    .line 284
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->isShouldUploadAtomic()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->shouldUploadAtomic:Ljava/lang/Boolean;

    .line 285
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getUploadKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->uploadKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 286
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getNewUnlock()Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->newUnlock:Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;---><init>(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$1;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;-><init>(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)V

    return-void
.end method


# virtual methods
.method autoBuild()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;
    .locals 22

    move-object/16 v19, p0

    move-object/from16 v0, v19

    const-string v1, ""

    .line 396
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->addUserIds:Ljava/util/List;

    if-nez v2, :cond_0

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " addUserIds"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    :cond_0
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->addUserAttribute:Ljava/util/List;

    if-nez v2, :cond_1

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " addUserAttribute"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    :cond_1
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->addSubKeys:Ljava/util/List;

    if-nez v2, :cond_2

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " addSubKeys"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 405
    :cond_2
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->changeSubKeys:Ljava/util/List;

    if-nez v2, :cond_3

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " changeSubKeys"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    :cond_3
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->revokeUserIds:Ljava/util/List;

    if-nez v2, :cond_4

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " revokeUserIds"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 411
    :cond_4
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->revokeSubKeys:Ljava/util/List;

    if-nez v2, :cond_5

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " revokeSubKeys"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    :cond_5
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->shouldUpload:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " shouldUpload"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    :cond_6
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->shouldUploadAtomic:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " shouldUploadAtomic"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 421
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required properties:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 423
    :cond_8
    new-instance v1, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;

    iget-object v4, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->masterKeyId:Ljava/lang/Long;

    iget-object v5, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->fingerprint:[B

    iget-object v6, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->addUserIds:Ljava/util/List;

    iget-object v7, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->addUserAttribute:Ljava/util/List;

    iget-object v8, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->addSubKeys:Ljava/util/List;

    iget-object v9, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->changeSubKeys:Ljava/util/List;

    iget-object v10, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->changePrimaryUserId:Ljava/lang/String;

    iget-object v11, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->revokeUserIds:Ljava/util/List;

    iget-object v12, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->revokeSubKeys:Ljava/util/List;

    iget-object v13, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->securityTokenPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    iget-object v14, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->securityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->shouldUpload:Ljava/lang/Boolean;

    .line 435
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->shouldUploadAtomic:Ljava/lang/Boolean;

    .line 436
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->uploadKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    iget-object v3, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->newUnlock:Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    move-object/from16 v18, v3

    move-object v3, v1

    move-object/from16 v17, v2

    invoke-direct/range {v3 .. v18}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;-><init>(Ljava/lang/Long;[BLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/util/Passphrase;ZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;)V

    return-object v1

    const-string v20, "M_InsDal"

    const-string v21, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->autoBuild()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getChangePrimaryUserId()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 345
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->changePrimaryUserId:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->getChangePrimaryUserId()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFingerprint()[B
    .locals 4

    move-object/16 v1, p0

    .line 304
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->fingerprint:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->getFingerprint()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMasterKeyId()Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    .line 295
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->masterKeyId:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->getMasterKeyId()Ljava/lang/Long;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setAddSubKeys(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    .line 325
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v0, "Null addSubKeys"

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 327
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->addSubKeys:Ljava/util/List;

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->setAddSubKeys(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setAddUserAttribute(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    .line 317
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v0, "Null addUserAttribute"

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->addUserAttribute:Ljava/util/List;

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->setAddUserAttribute(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setAddUserIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    .line 309
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v0, "Null addUserIds"

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 311
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->addUserIds:Ljava/util/List;

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->setAddUserIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setChangePrimaryUserId(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 340
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->changePrimaryUserId:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->setChangePrimaryUserId(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setChangeSubKeys(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    .line 333
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v0, "Null changeSubKeys"

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 335
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->changeSubKeys:Ljava/util/List;

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->setChangeSubKeys(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setFingerprint([B)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 299
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->fingerprint:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->setFingerprint([B)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setMasterKeyId(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 290
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->masterKeyId:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->setMasterKeyId(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setNewUnlock(Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 390
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->newUnlock:Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->setNewUnlock(Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setRevokeSubKeys(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    .line 358
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v0, "Null revokeSubKeys"

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 360
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->revokeSubKeys:Ljava/util/List;

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->setRevokeSubKeys(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setRevokeUserIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    .line 350
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v0, "Null revokeUserIds"

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 352
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->revokeUserIds:Ljava/util/List;

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->setRevokeUserIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSecurityTokenAdminPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 370
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->securityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->setSecurityTokenAdminPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSecurityTokenPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 365
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->securityTokenPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->setSecurityTokenPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setShouldUpload(Z)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 375
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->shouldUpload:Ljava/lang/Boolean;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->setShouldUpload(Z)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setShouldUploadAtomic(Z)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 380
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->shouldUploadAtomic:Ljava/lang/Boolean;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->setShouldUploadAtomic(Z)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setUploadKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 385
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->uploadKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;--->setUploadKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
