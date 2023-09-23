.class abstract Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;
.super Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;
.source "$AutoValue_SaveKeyringParcel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;
    }
.end annotation


# instance fields
.field private final addSubKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;",
            ">;"
        }
    .end annotation
.end field

.field private final addUserAttribute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private final addUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final changePrimaryUserId:Ljava/lang/String;

.field private final changeSubKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;",
            ">;"
        }
    .end annotation
.end field

.field private final fingerprint:[B

.field private final masterKeyId:Ljava/lang/Long;

.field private final newUnlock:Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

.field private final revokeSubKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final revokeUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final securityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

.field private final securityTokenPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

.field private final shouldUpload:Z

.field private final shouldUploadAtomic:Z

.field private final uploadKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;


# direct methods
.method constructor <init>(Ljava/lang/Long;[BLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/util/Passphrase;ZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "[B",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;",
            ">;",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;",
            ">;",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/sufficientlysecure/keychain/util/Passphrase;",
            "Lorg/sufficientlysecure/keychain/util/Passphrase;",
            "ZZ",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            "Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;",
            ")V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    move-object/16 p5, p8

    move-object/16 p6, p9

    move-object/16 p7, p10

    move-object/16 p8, p11

    move/16 p9, p12

    move/16 p10, p13

    move-object/16 p11, p14

    move-object/16 p12, p15

    .line 46
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;-><init>()V

    .line 47
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->masterKeyId:Ljava/lang/Long;

    .line 48
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->fingerprint:[B

    if-nez p0, :cond_0

    .line 50
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null addUserIds"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_0
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->addUserIds:Ljava/util/List;

    if-nez p1, :cond_1

    .line 54
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null addUserAttribute"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_1
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->addUserAttribute:Ljava/util/List;

    if-nez p2, :cond_2

    .line 58
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null addSubKeys"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_2
    iput-object p2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->addSubKeys:Ljava/util/List;

    if-nez p3, :cond_3

    .line 62
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null changeSubKeys"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_3
    iput-object p3, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->changeSubKeys:Ljava/util/List;

    .line 65
    iput-object p4, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->changePrimaryUserId:Ljava/lang/String;

    if-nez p5, :cond_4

    .line 67
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null revokeUserIds"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_4
    iput-object p5, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->revokeUserIds:Ljava/util/List;

    if-nez p6, :cond_5

    .line 71
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null revokeSubKeys"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_5
    iput-object p6, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->revokeSubKeys:Ljava/util/List;

    .line 74
    iput-object p7, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->securityTokenPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 75
    iput-object p8, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->securityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 76
    iput-boolean p9, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->shouldUpload:Z

    .line 77
    iput-boolean p10, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->shouldUploadAtomic:Z

    .line 78
    iput-object p11, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->uploadKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 79
    iput-object p12, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->newUnlock:Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    return-void

    const-string p13, "M_InsDal"

    const-string p14, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;---><init>(Ljava/lang/Long;[BLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/util/Passphrase;ZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;)V"

    invoke-static/range {p13 .. p14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v5, v4, :cond_0

    return v0

    .line 191
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 192
    check-cast v5, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    .line 193
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->masterKeyId:Ljava/lang/Long;

    if-nez v1, :cond_1

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->masterKeyId:Ljava/lang/Long;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->fingerprint:[B

    instance-of v3, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;

    if-eqz v3, :cond_2

    move-object v3, v5

    check-cast v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->fingerprint:[B

    goto :goto_1

    .line 194
    :cond_2
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getFingerprint()[B

    move-result-object v3

    :goto_1
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->addUserIds:Ljava/util/List;

    .line 195
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddUserIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->addUserAttribute:Ljava/util/List;

    .line 196
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddUserAttribute()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->addSubKeys:Ljava/util/List;

    .line 197
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddSubKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->changeSubKeys:Ljava/util/List;

    .line 198
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getChangeSubKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->changePrimaryUserId:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 199
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getChangePrimaryUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_3
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->changePrimaryUserId:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getChangePrimaryUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_2
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->revokeUserIds:Ljava/util/List;

    .line 200
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getRevokeUserIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->revokeSubKeys:Ljava/util/List;

    .line 201
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getRevokeSubKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->securityTokenPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    if-nez v1, :cond_4

    .line 202
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getSecurityTokenPin()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_4
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->securityTokenPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getSecurityTokenPin()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/util/Passphrase;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_3
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->securityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    if-nez v1, :cond_5

    .line 203
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getSecurityTokenAdminPin()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_5
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->securityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getSecurityTokenAdminPin()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/util/Passphrase;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_4
    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->shouldUpload:Z

    .line 204
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->isShouldUpload()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->shouldUploadAtomic:Z

    .line 205
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->isShouldUploadAtomic()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->uploadKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    if-nez v1, :cond_6

    .line 206
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getUploadKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_6
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->uploadKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getUploadKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_5
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->newUnlock:Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    if-nez v1, :cond_7

    .line 207
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getNewUnlock()Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    move-result-object v5

    if-nez v5, :cond_8

    goto :goto_6

    :cond_7
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->newUnlock:Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getNewUnlock()Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_9
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAddSubKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 107
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->addSubKeys:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->getAddSubKeys()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAddUserAttribute()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 102
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->addUserAttribute:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->getAddUserAttribute()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAddUserIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 97
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->addUserIds:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->getAddUserIds()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getChangePrimaryUserId()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 118
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->changePrimaryUserId:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->getChangePrimaryUserId()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getChangeSubKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 112
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->changeSubKeys:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->getChangeSubKeys()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFingerprint()[B
    .locals 4

    move-object/16 v1, p0

    .line 92
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->fingerprint:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->getFingerprint()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMasterKeyId()Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    .line 85
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->masterKeyId:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->getMasterKeyId()Ljava/lang/Long;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getNewUnlock()Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;
    .locals 4

    move-object/16 v1, p0

    .line 162
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->newUnlock:Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->getNewUnlock()Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getRevokeSubKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 128
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->revokeSubKeys:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->getRevokeSubKeys()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getRevokeUserIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 123
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->revokeUserIds:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->getRevokeUserIds()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSecurityTokenAdminPin()Lorg/sufficientlysecure/keychain/util/Passphrase;
    .locals 4

    move-object/16 v1, p0

    .line 140
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->securityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->getSecurityTokenAdminPin()Lorg/sufficientlysecure/keychain/util/Passphrase;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSecurityTokenPin()Lorg/sufficientlysecure/keychain/util/Passphrase;
    .locals 4

    move-object/16 v1, p0

    .line 134
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->securityTokenPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->getSecurityTokenPin()Lorg/sufficientlysecure/keychain/util/Passphrase;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUploadKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
    .locals 4

    move-object/16 v1, p0

    .line 156
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->uploadKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->getUploadKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 9

    move-object/16 v6, p0

    .line 216
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->masterKeyId:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->masterKeyId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 218
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->fingerprint:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 220
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->addUserIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 222
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->addUserAttribute:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 224
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->addSubKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 226
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->changeSubKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 228
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->changePrimaryUserId:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->changePrimaryUserId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 230
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->revokeUserIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 232
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->revokeSubKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 234
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->securityTokenPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->securityTokenPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/util/Passphrase;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 236
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->securityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->securityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/util/Passphrase;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 238
    iget-boolean v3, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->shouldUpload:Z

    const/16 v4, 0x4d5

    const/16 v5, 0x4cf

    if-eqz v3, :cond_4

    const/16 v3, 0x4cf

    goto :goto_4

    :cond_4
    const/16 v3, 0x4d5

    :goto_4
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 240
    iget-boolean v3, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->shouldUploadAtomic:Z

    if-eqz v3, :cond_5

    const/16 v4, 0x4cf

    :cond_5
    xor-int/2addr v0, v4

    mul-int v0, v0, v2

    .line 242
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->uploadKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->uploadKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 244
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->newUnlock:Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->newUnlock:Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    xor-int/2addr v0, v1

    return v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->hashCode()I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isShouldUpload()Z
    .locals 4

    move-object/16 v1, p0

    .line 145
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->shouldUpload:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->isShouldUpload()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isShouldUploadAtomic()Z
    .locals 4

    move-object/16 v1, p0

    .line 150
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->shouldUploadAtomic:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->isShouldUploadAtomic()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method toBuilder()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 5

    move-object/16 v2, p0

    .line 250
    new-instance v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;-><init>(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$1;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->toBuilder()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SaveKeyringParcel{masterKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->masterKeyId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fingerprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->fingerprint:[B

    .line 169
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addUserIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->addUserIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", addUserAttribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->addUserAttribute:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", addSubKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->addSubKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changeSubKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->changeSubKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changePrimaryUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->changePrimaryUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", revokeUserIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->revokeUserIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", revokeSubKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->revokeSubKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", securityTokenPin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->securityTokenPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", securityTokenAdminPin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->securityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldUpload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->shouldUpload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldUploadAtomic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->shouldUploadAtomic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uploadKeyserver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->uploadKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newUnlock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;->newUnlock:Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
