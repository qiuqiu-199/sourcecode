.class public abstract Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
.super Ljava/lang/Object;
.source "SaveKeyringParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field private addSubKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;",
            ">;"
        }
    .end annotation
.end field

.field private addUserAttribute:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private addUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private changeSubKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;",
            ">;"
        }
    .end annotation
.end field

.field private revokeSubKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private revokeUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 111
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addUserIds:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->revokeUserIds:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addUserAttribute:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addSubKeys:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->changeSubKeys:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->revokeSubKeys:Ljava/util/ArrayList;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addUserIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->revokeUserIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addUserAttribute:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addSubKeys:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->changeSubKeys:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->revokeSubKeys:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public addOrReplaceSubkeyChange(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 186
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getSubkeyChange(J)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->changeSubKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 191
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->changeSubKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;--->addOrReplaceSubkeyChange(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public addRevokeSubkey(J)V
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 170
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->revokeSubKeys:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;--->addRevokeSubkey(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public addRevokeUserId(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 178
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->revokeUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;--->addRevokeUserId(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public addSubkeyAdd(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 162
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addSubKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;--->addSubkeyAdd(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public addUserAttribute(Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 212
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addUserAttribute:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;--->addUserAttribute(Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public addUserId(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 166
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;--->addUserId(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method abstract autoBuild()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;
.end method

.method public build()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;
    .locals 4

    move-object/16 v1, p0

    .line 218
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addUserAttribute:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setAddUserAttribute(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 219
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->revokeSubKeys:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setRevokeSubKeys(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 220
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->revokeUserIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setRevokeUserIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 221
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addSubKeys:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setAddSubKeys(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 222
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addUserIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setAddUserIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 223
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->changeSubKeys:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setChangeSubKeys(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 225
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->autoBuild()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;--->build()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getChangePrimaryUserId()Ljava/lang/String;
.end method

.method public abstract getFingerprint()[B
.end method

.method public abstract getMasterKeyId()Ljava/lang/Long;
.end method

.method public getMutableAddSubKeys()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 131
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addSubKeys:Ljava/util/ArrayList;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;--->getMutableAddSubKeys()Ljava/util/ArrayList;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMutableAddUserIds()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 134
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addUserIds:Ljava/util/ArrayList;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;--->getMutableAddUserIds()Ljava/util/ArrayList;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMutableRevokeSubKeys()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 137
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->revokeSubKeys:Ljava/util/ArrayList;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;--->getMutableRevokeSubKeys()Ljava/util/ArrayList;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMutableRevokeUserIds()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 140
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->revokeUserIds:Ljava/util/ArrayList;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;--->getMutableRevokeUserIds()Ljava/util/ArrayList;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSubkeyChange(J)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;
    .locals 9

    move-object/16 v6, p0

    move-wide/16 v7, p1

    .line 199
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->changeSubKeys:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 203
    :cond_0
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->changeSubKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;

    .line 204
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getSubKeyId()J

    move-result-wide v3

    cmp-long v5, v3, v7

    if-nez v5, :cond_1

    return-object v2

    :cond_2
    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;--->getSubkeyChange(J)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public removeRevokeSubkey(J)V
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 174
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->revokeSubKeys:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;--->removeRevokeSubkey(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public removeRevokeUserId(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 182
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->revokeUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;--->removeRevokeUserId(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public removeSubkeyChange(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 195
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->changeSubKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;--->removeSubkeyChange(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method abstract setAddSubKeys(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"
        }
    .end annotation
.end method

.method abstract setAddUserAttribute(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"
        }
    .end annotation
.end method

.method abstract setAddUserIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"
        }
    .end annotation
.end method

.method public abstract setChangePrimaryUserId(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
.end method

.method abstract setChangeSubKeys(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"
        }
    .end annotation
.end method

.method abstract setFingerprint([B)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
.end method

.method abstract setMasterKeyId(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
.end method

.method public abstract setNewUnlock(Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
.end method

.method abstract setRevokeSubKeys(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"
        }
    .end annotation
.end method

.method abstract setRevokeUserIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"
        }
    .end annotation
.end method

.method public abstract setSecurityTokenAdminPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
.end method

.method public abstract setSecurityTokenPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
.end method

.method abstract setShouldUpload(Z)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
.end method

.method abstract setShouldUploadAtomic(Z)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
.end method

.method public setUpdateOptions(ZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    .line 156
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setShouldUpload(Z)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 157
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setShouldUploadAtomic(Z)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 158
    invoke-virtual {v0, p0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setUploadKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;--->setUpdateOptions(ZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method abstract setUploadKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
.end method
