.class public Lorg/sufficientlysecure/keychain/keyimport/CloudSearch;
.super Ljava/lang/Object;
.source "CloudSearch.java"


# static fields
.field private static final SECONDS:J = 0x3e8L


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 33
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/CloudSearch;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static search(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;",
            "Lorg/sufficientlysecure/keychain/util/ParcelableProxy;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$CloudSearchFailureException;
        }
    .end annotation

    move-object/16 v11, p0

    move-object/16 v12, p1

    move-object/16 v13, p2

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 45
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;->isKeyserverEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->fromHkpKeyserverAddress(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;->isKeybaseEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-static {}, Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;->getInstance()Lorg/sufficientlysecure/keychain/keyimport/KeybaseKeyserverClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;->isFacebookEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-static {}, Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;->getInstance()Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_2
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;->isWebKeyDirectoryEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 55
    invoke-static {}, Lorg/sufficientlysecure/keychain/keyimport/WebKeyDirectoryClient;->getInstance()Lorg/sufficientlysecure/keychain/keyimport/WebKeyDirectoryClient;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 59
    new-instance v8, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;

    invoke-direct {v8, v12}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;-><init>(I)V

    if-lez v12, :cond_7

    .line 62
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient;

    .line 64
    new-instance v10, Lorg/sufficientlysecure/keychain/keyimport/CloudSearch$1;

    move-object v1, v10

    move-object v2, v8

    move-object v4, v11

    move-object v5, v13

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/keyimport/CloudSearch$1;-><init>(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Ljava/util/Vector;)V

    .line 75
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 76
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 81
    :cond_4
    monitor-enter v8

    .line 83
    :try_start_0
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v11

    sget-object v13, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v11, v13, :cond_5

    const/16 v11, 0x1e

    goto :goto_1

    :cond_5
    const/16 v11, 0xa

    :goto_1
    int-to-long v1, v11

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v8, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 84
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Thread;

    .line 86
    invoke-virtual {v12}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v11

    goto :goto_3

    .line 90
    :catch_0
    :cond_6
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;->outstandingSuppliers()I

    move-result v11

    if-lez v11, :cond_8

    .line 93
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Launched "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " cloud searchers, but "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;->outstandingSuppliers()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "failed to complete."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 95
    new-instance v12, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;

    invoke-direct {v12, v11}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 90
    :goto_3
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 98
    :cond_7
    new-instance v11, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNoEnabledSourceException;

    invoke-direct {v11}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNoEnabledSourceException;-><init>()V

    invoke-virtual {v7, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_8
    :goto_4
    invoke-virtual {v7}, Ljava/util/Vector;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 102
    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$CloudSearchFailureException;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cloud search exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$CloudSearchFailureException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 107
    :cond_9
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 108
    invoke-virtual {v7, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$CloudSearchFailureException;

    throw v11

    :cond_a
    return-object v8

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/CloudSearch;--->search(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/ArrayList;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
