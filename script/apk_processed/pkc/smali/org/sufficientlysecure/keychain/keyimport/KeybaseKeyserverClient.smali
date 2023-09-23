.class public Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;
.super Ljava/lang/Object;
.source "KeybaseKeyserverClient.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient;


# direct methods
.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstance()Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;
    .locals 4

    .line 36
    new-instance v0, Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;-><init>()V

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;--->getInstance()Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private makeEntry(Lcom/textuality/keybase/lib/Match;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    .line 70
    new-instance v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;-><init>()V

    .line 71
    invoke-virtual {v0, v7}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setQuery(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 73
    invoke-virtual {v0, v7}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setRevoked(Z)V

    .line 75
    invoke-virtual {v6}, Lcom/textuality/keybase/lib/Match;->getUsername()Ljava/lang/String;

    move-result-object v7

    .line 76
    invoke-virtual {v6}, Lcom/textuality/keybase/lib/Match;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v6}, Lcom/textuality/keybase/lib/Match;->getFingerprint()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintHexFingerprint(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setFingerprint([B)V

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/textuality/keybase/lib/Match;->getKeyID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setKeyIdHex(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v7}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setKeybaseName(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v6}, Lcom/textuality/keybase/lib/Match;->getBitStrength()I

    move-result v2

    .line 86
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setBitStrength(I)V

    .line 87
    invoke-virtual {v6}, Lcom/textuality/keybase/lib/Match;->getAlgorithmId()I

    move-result v3

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getAlgorithmInfo(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setAlgorithm(Ljava/lang/String;)V

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<keybase.io/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ">"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v1, :cond_0

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 95
    :cond_0
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v6}, Lcom/textuality/keybase/lib/Match;->getProofLabels()Ljava/util/List;

    move-result-object v6

    .line 98
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setUserIds(Ljava/util/ArrayList;)V

    .line 102
    invoke-virtual {v0, v7}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setPrimaryUserId(Ljava/lang/String;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;--->makeEntry(Lcom/textuality/keybase/lib/Match;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public add(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$AddKeyException;
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 119
    new-instance v1, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$AddKeyException;

    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$AddKeyException;-><init>()V

    throw v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;--->add(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public get(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 109
    :try_start_0
    new-instance v0, Lcom/textuality/keybase/lib/KeybaseQuery;

    new-instance v1, Lorg/sufficientlysecure/keychain/network/OkHttpKeybaseClient;

    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/network/OkHttpKeybaseClient;-><init>()V

    invoke-direct {v0, v1}, Lcom/textuality/keybase/lib/KeybaseQuery;-><init>(Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient;)V

    .line 110
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/textuality/keybase/lib/KeybaseQuery;->setProxy(Ljava/net/Proxy;)V

    .line 111
    invoke-static {v0, v3}, Lcom/textuality/keybase/lib/User;->keyForUsername(Lcom/textuality/keybase/lib/KeybaseQuery;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lcom/textuality/keybase/lib/KeybaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    .line 113
    new-instance v4, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;

    invoke-virtual {v3}, Lcom/textuality/keybase/lib/KeybaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;-><init>(Ljava/lang/String;)V

    throw v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;--->get(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/lang/String;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public search(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;,
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNeedsRepairException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "0x"

    .line 46
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 48
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 50
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    new-instance v4, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryTooShortException;

    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryTooShortException;-><init>()V

    throw v4

    .line 55
    :cond_1
    :try_start_0
    new-instance v1, Lcom/textuality/keybase/lib/KeybaseQuery;

    new-instance v2, Lorg/sufficientlysecure/keychain/network/OkHttpKeybaseClient;

    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/network/OkHttpKeybaseClient;-><init>()V

    invoke-direct {v1, v2}, Lcom/textuality/keybase/lib/KeybaseQuery;-><init>(Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient;)V

    .line 56
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/textuality/keybase/lib/KeybaseQuery;->setProxy(Ljava/net/Proxy;)V

    .line 57
    invoke-virtual {v1, v4}, Lcom/textuality/keybase/lib/KeybaseQuery;->search(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v5

    .line 58
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/textuality/keybase/lib/Match;

    .line 59
    invoke-direct {v3, v1, v4}, Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;->makeEntry(Lcom/textuality/keybase/lib/Match;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/textuality/keybase/lib/KeybaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception v4

    const-string v5, "keybase result parsing error"

    const/4 v0, 0x0

    .line 62
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v5, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    new-instance v5, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected structure in keybase search result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/textuality/keybase/lib/KeybaseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;-><init>(Ljava/lang/String;)V

    throw v5

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;--->search(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/ArrayList;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic search(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;,
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNeedsRepairException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;->search(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
