.class public Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;
.super Ljava/util/ArrayList;
.source "ImportKeysList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mSupplierCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iput v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;->mSupplierCount:I

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;---><init>(I)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private declared-synchronized addOrMerge(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)Z
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    monitor-enter v3

    .line 52
    :try_start_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    .line 53
    invoke-virtual {v4, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->hasSameKeyAs(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-direct {v3, v4, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;->mergeDupes(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v4

    .line 57
    :cond_1
    :try_start_1
    invoke-super {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return v4

    :catchall_0
    move-exception v4

    .line 51
    monitor-exit v3

    throw v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;--->addOrMerge(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)Z"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private mergeDupes(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    .line 65
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->isRevoked()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v6, v2}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setRevoked(Z)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {v6, v2}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setExpired(Z)V

    const/4 v0, 0x1

    .line 73
    :cond_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->isSecure()Z

    move-result v3

    if-nez v3, :cond_2

    .line 74
    invoke-virtual {v6, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setSecure(Z)V

    const/4 v0, 0x1

    .line 78
    :cond_2
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 79
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V

    .line 81
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getPrimaryUserId()Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setPrimaryUserId(Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    .line 84
    :cond_3
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getKeybaseName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 87
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getKeybaseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setKeybaseName(Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_4
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getFbUsername()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 90
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getFbUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setFbUsername(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_5
    :goto_2
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getUserIds()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->addUserIds(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;--->mergeDupes(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 26
    check-cast p1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;->add(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)Z

    move-result p1

    return p1
.end method

.method public add(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 36
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;->addOrMerge(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)Z

    const/4 v1, 0x1

    return v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;--->add(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;)Z"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 43
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    .line 44
    invoke-direct {v3, v2}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;->addOrMerge(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;--->addAll(Ljava/util/Collection;)Z"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public declared-synchronized finishedAdding()V
    .locals 4

    move-object/16 v1, p0

    monitor-enter v1

    .line 102
    :try_start_0
    iget v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;->mSupplierCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;->mSupplierCount:I

    .line 103
    iget v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;->mSupplierCount:I

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    .line 101
    monitor-exit v1

    throw v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;--->finishedAdding()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public outstandingSuppliers()I
    .locals 4

    move-object/16 v1, p0

    .line 109
    iget v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;->mSupplierCount:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;--->outstandingSuppliers()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
