.class public Lorg/sufficientlysecure/keychain/util/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;
    }
.end annotation


# static fields
.field private static PREF_FILE_MODE:I = 0x4

.field private static PREF_FILE_NAME:Ljava/lang/String; = "APG.main"

.field private static sPreferences:Lorg/sufficientlysecure/keychain/util/Preferences;


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    return-void

    const-string v0, "M_InsDal"

    const-string v1, "Lorg/sufficientlysecure/keychain/util/Preferences;---><clinit>()V"

    invoke-static/range {v0 .. v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 66
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->updateSharedPreferences(Landroid/content/Context;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private addOnionToSks()V
    .locals 7

    move-object/16 v4, p0

    .line 521
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/util/Preferences;->getKeyServers()Ljava/util/ArrayList;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 523
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 524
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "hkps://hkps.pool.sks-keyservers.net"

    .line 528
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "hkps://hkps.pool.sks-keyservers.net"

    const-string v3, "hkp://jirk5u4osbsr34t5.onion"

    .line 529
    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->createWithOnionProxy(Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 535
    :cond_2
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->setKeyServers(Ljava/util/ArrayList;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/util/Preferences;--->addOnionToSks()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;
    .locals 5

    move-object/16 v2, p0

    const-class v0, Lorg/sufficientlysecure/keychain/util/Preferences;

    monitor-enter v0

    const/4 v1, 0x0

    .line 53
    :try_start_0
    invoke-static {v2, v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;Z)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;Z)Lorg/sufficientlysecure/keychain/util/Preferences;
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    const-class v0, Lorg/sufficientlysecure/keychain/util/Preferences;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lorg/sufficientlysecure/keychain/util/Preferences;->sPreferences:Lorg/sufficientlysecure/keychain/util/Preferences;

    if-eqz v1, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    sget-object v3, Lorg/sufficientlysecure/keychain/util/Preferences;->sPreferences:Lorg/sufficientlysecure/keychain/util/Preferences;

    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->updateSharedPreferences(Landroid/content/Context;)V

    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    new-instance v3, Lorg/sufficientlysecure/keychain/util/Preferences;

    invoke-direct {v3, v2}, Lorg/sufficientlysecure/keychain/util/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v3, Lorg/sufficientlysecure/keychain/util/Preferences;->sPreferences:Lorg/sufficientlysecure/keychain/util/Preferences;

    .line 63
    :goto_1
    sget-object v2, Lorg/sufficientlysecure/keychain/util/Preferences;->sPreferences:Lorg/sufficientlysecure/keychain/util/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v2

    .line 56
    monitor-exit v0

    throw v2

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getPreferences(Landroid/content/Context;Z)Lorg/sufficientlysecure/keychain/util/Preferences;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private migrateToHkps()V
    .locals 9

    move-object/16 v6, p0

    .line 491
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/util/Preferences;->getKeyServers()Ljava/util/ArrayList;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 493
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 494
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    if-nez v2, :cond_0

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x9a52684

    if-eq v4, v5, :cond_3

    const v5, 0x35ae838b

    if-eq v4, v5, :cond_2

    const v5, 0x723957ce

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "subkeys.pgp.net"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    const-string v4, "pgp.mit.edu"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "pool.sks-keyservers.net"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    :cond_4
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 511
    :pswitch_0
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :pswitch_1
    const-string v2, "hkps://pgp.mit.edu"

    .line 506
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->createFromUri(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const-string v2, "hkps://hkps.pool.sks-keyservers.net"

    .line 501
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->createFromUri(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 517
    :cond_5
    invoke-virtual {v6, v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->setKeyServers(Ljava/util/ArrayList;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/util/Preferences;--->migrateToHkps()V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private replaceDefaultKeyserverWithUbuntu()V
    .locals 7

    move-object/16 v4, p0

    .line 539
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/util/Preferences;->getKeyServers()Ljava/util/ArrayList;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "hkps://hkps.pool.sks-keyservers.net"

    const/4 v2, 0x0

    .line 543
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "hkps://pgp.mit.edu"

    .line 544
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v3, "hkps://keyserver.ubuntu.com"

    .line 546
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->createFromUri(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v3

    if-eqz v1, :cond_3

    .line 548
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 549
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 550
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_4
    :goto_2
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->setKeyServers(Ljava/util/ArrayList;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/util/Preferences;--->replaceDefaultKeyserverWithUbuntu()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static setPreferenceManagerFileAndMode(Landroid/preference/PreferenceManager;)V
    .locals 4

    move-object/16 v1, p0

    .line 76
    sget-object v0, Lorg/sufficientlysecure/keychain/util/Preferences;->PREF_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 77
    sget v0, Lorg/sufficientlysecure/keychain/util/Preferences;->PREF_FILE_MODE:I

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setPreferenceManagerFileAndMode(Landroid/preference/PreferenceManager;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public clear()V
    .locals 4

    move-object/16 v1, p0

    .line 556
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/Preferences;--->clear()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAnalyticsLastAsked()J
    .locals 7

    move-object/16 v4, p0

    .line 384
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "analytics_last_asked"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getAnalyticsLastAsked()J"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCacheTtlSeconds()I
    .locals 6

    move-object/16 v3, p0

    .line 104
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "passphraseCacheLastTtl"

    const v2, 0x7fffffff

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getCacheTtlSeconds()I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCachedConsolidate()Z
    .locals 6

    move-object/16 v3, p0

    .line 114
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "cachedConsolidate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getCachedConsolidate()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCloudSearchPrefs()Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;
    .locals 8

    move-object/16 v5, p0

    .line 332
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "search_keyserver_pref"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "search_keybase_pref"

    .line 333
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "search_wkd_pref"

    .line 335
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 336
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferredKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v3

    const/4 v4, 0x0

    .line 332
    invoke-static {v0, v1, v4, v2, v3}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;->create(ZZZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;

    move-result-object v0

    return-object v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getCloudSearchPrefs()Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getEncryptFilenames()Z
    .locals 6

    move-object/16 v3, p0

    .line 268
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "encryptFilenames"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getEncryptFilenames()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getExperimentalEnableKeybase()Z
    .locals 6

    move-object/16 v3, p0

    .line 440
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "experimentalEnableKeybase"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getExperimentalEnableKeybase()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getExperimentalEnableLinkedIdentities()Z
    .locals 6

    move-object/16 v3, p0

    .line 436
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "experimentalEnableLinkedIdentities"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getExperimentalEnableLinkedIdentities()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getExperimentalSmartPGPAuthoritiesEnable()Z
    .locals 6

    move-object/16 v3, p0

    .line 448
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "smartpgp_authorities_pref"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getExperimentalSmartPGPAuthoritiesEnable()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getExperimentalUsbAllowUntested()Z
    .locals 6

    move-object/16 v3, p0

    .line 444
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "experimentalUsbAllowUntested"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getExperimentalUsbAllowUntested()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFilesEncryptToSelf()Z
    .locals 6

    move-object/16 v3, p0

    .line 208
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fileSelfEncrypt"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getFilesEncryptToSelf()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFilesUseCompression()Z
    .locals 6

    move-object/16 v3, p0

    .line 198
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "useFileCompression"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getFilesUseCompression()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyServers()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            ">;"
        }
    .end annotation

    move-object/16 v9, p0

    .line 144
    iget-object v0, v9, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "keyServers"

    const-string v2, "hkps://keyserver.ubuntu.com,hkps://hkps.pool.sks-keyservers.net;hkp://jirk5u4osbsr34t5.onion,hkps://pgp.mit.edu"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 149
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ","

    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 151
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 152
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 153
    aget-object v6, v5, v3

    .line 154
    array-length v7, v5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    aget-object v5, v5, v8

    .line 156
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    .line 160
    :cond_2
    invoke-static {v6, v5}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->createWithOnionProxy(Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getKeyServers()Ljava/util/ArrayList;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyserverSyncWorkUuid()Ljava/util/UUID;
    .locals 6

    move-object/16 v3, p0

    .line 354
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "syncWorkUuid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    :cond_0
    return-object v2

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getKeyserverSyncWorkUuid()Ljava/util/UUID;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 90
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "language"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getLanguage()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;
    .locals 8

    move-object/16 v5, p0

    .line 312
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/Preferences;->getUseTorProxy()Z

    move-result v0

    .line 313
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/Preferences;->getUseNormalProxy()Z

    move-result v1

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    const-string v1, "127.0.0.1"

    const/16 v2, 0x1fb6

    sget-object v3, Lorg/sufficientlysecure/keychain/Constants$Orbot;->PROXY_TYPE:Ljava/net/Proxy$Type;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;-><init>(Ljava/lang/String;ILjava/net/Proxy$Type;I)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_1

    .line 322
    new-instance v1, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/Preferences;->getProxyHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/Preferences;->getProxyPort()I

    move-result v3

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/Preferences;->getProxyType()Ljava/net/Proxy$Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;-><init>(Ljava/lang/String;ILjava/net/Proxy$Type;I)V

    return-object v1

    .line 325
    :cond_1
    new-instance v1, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3, v0}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;-><init>(Ljava/lang/String;ILjava/net/Proxy$Type;I)V

    return-object v1

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPassphraseCacheSubs()Z
    .locals 6

    move-object/16 v3, p0

    .line 100
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "passphraseCacheSubs"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getPassphraseCacheSubs()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPreferredKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
    .locals 5

    move-object/16 v2, p0

    .line 166
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->getKeyServers()Ljava/util/ArrayList;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    :goto_0
    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getPreferredKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 282
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "proxyHost"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getProxyHost()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getProxyPort()I
    .locals 6

    move-object/16 v3, p0

    .line 291
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "proxyPort"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getProxyPort()I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getProxyType()Ljava/net/Proxy$Type;
    .locals 7

    move-object/16 v4, p0

    .line 298
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "proxyType"

    const-string v2, "proxyHttp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6f96e09f

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const v2, -0x1c649fea

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "proxyHttp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "proxySocks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "Invalid Proxy Type in preferences"

    .line 306
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 304
    :pswitch_0
    sget-object v0, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    return-object v0

    .line 302
    :pswitch_1
    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getProxyType()Ljava/net/Proxy$Type;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 4

    move-object/16 v1, p0

    .line 86
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getSharedPreferences()Landroid/content/SharedPreferences;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getTextSelfEncrypt()Z
    .locals 6

    move-object/16 v3, p0

    .line 228
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "textSelfEncrypt"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getTextSelfEncrypt()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getTextUseCompression()Z
    .locals 6

    move-object/16 v3, p0

    .line 218
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "useTextCompression"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getTextUseCompression()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getTheme()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 232
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const-string v2, "light"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getTheme()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUseArmor()Z
    .locals 6

    move-object/16 v3, p0

    .line 258
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "useArmor"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getUseArmor()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUseNormalProxy()Z
    .locals 6

    move-object/16 v3, p0

    .line 274
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "useNormalProxy"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getUseNormalProxy()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUseTorProxy()Z
    .locals 6

    move-object/16 v3, p0

    .line 278
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "useTorProxy"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getUseTorProxy()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getWifiOnlySync()Z
    .locals 6

    move-object/16 v3, p0

    .line 430
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enableWifiSyncOnly"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->getWifiOnlySync()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isAnalyticsAskedPolitely()Z
    .locals 6

    move-object/16 v3, p0

    .line 364
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "analytics_asked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->isAnalyticsAskedPolitely()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isAnalyticsHasConsent()Z
    .locals 6

    move-object/16 v3, p0

    .line 372
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "analytics_consent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->isAnalyticsHasConsent()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isAppExecutedFirstTime()Z
    .locals 6

    move-object/16 v3, p0

    .line 134
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "firstTimeApp"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->isAppExecutedFirstTime()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isFirstTime()Z
    .locals 6

    move-object/16 v3, p0

    .line 124
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "firstTime"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->isFirstTime()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isKeySignaturesTableInitialized()Z
    .locals 6

    move-object/16 v3, p0

    .line 340
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "key_signatures_table_initialized"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->isKeySignaturesTableInitialized()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isKeyserverSyncEnabled()Z
    .locals 6

    move-object/16 v3, p0

    .line 350
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "syncKeyserver"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->isKeyserverSyncEnabled()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setAnalyticsAskedPolitely()V
    .locals 6

    move-object/16 v3, p0

    .line 368
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "analytics_asked"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setAnalyticsAskedPolitely()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setAnalyticsGotUserConsent(Z)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 376
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "analytics_consent"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setAnalyticsGotUserConsent(Z)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setAnalyticsLastAskedNow()V
    .locals 7

    move-object/16 v4, p0

    .line 380
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "analytics_last_asked"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setAnalyticsLastAskedNow()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setAppExecutedFirstTime(Z)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 138
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firstTimeApp"

    .line 139
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setAppExecutedFirstTime(Z)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setCacheTtlSeconds(I)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 108
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "passphraseCacheLastTtl"

    .line 109
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setCacheTtlSeconds(I)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setCachedConsolidate(Z)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 118
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cachedConsolidate"

    .line 119
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setCachedConsolidate(Z)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setEncryptFilenames(Z)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 262
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "encryptFilenames"

    .line 263
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 264
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setEncryptFilenames(Z)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setFilesEncryptToSelf(Z)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 202
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fileSelfEncrypt"

    .line 203
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setFilesEncryptToSelf(Z)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setFilesUseCompression(Z)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 192
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "useFileCompression"

    .line 193
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setFilesUseCompression(Z)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setFirstTime(Z)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 128
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firstTime"

    .line 129
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setFirstTime(Z)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setKeyServers(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            ">;)V"
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 171
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, ""

    .line 173
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 174
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getOnion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getOnion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getOnion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v2, ""

    .line 183
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v5, "keyServers"

    .line 187
    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setKeyServers(Ljava/util/ArrayList;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setKeySignaturesTableInitialized()V
    .locals 6

    move-object/16 v3, p0

    .line 344
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_signatures_table_initialized"

    const/4 v2, 0x1

    .line 345
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 346
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setKeySignaturesTableInitialized()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setKeyserverSyncScheduled(Ljava/util/UUID;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    if-eqz v3, :cond_0

    .line 359
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 360
    :goto_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "syncWorkUuid"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setKeyserverSyncScheduled(Ljava/util/UUID;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 94
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "language"

    .line 95
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setLanguage(Ljava/lang/String;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setPrefVersionToCurrentVersion()V
    .locals 6

    move-object/16 v3, p0

    .line 452
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "keyServersDefaultVersion"

    const/16 v2, 0x9

    .line 453
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 454
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setPrefVersionToCurrentVersion()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setTextSelfEncrypt(Z)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 222
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "textSelfEncrypt"

    .line 223
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 224
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setTextSelfEncrypt(Z)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setTextUseCompression(Z)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 212
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "useTextCompression"

    .line 213
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setTextUseCompression(Z)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setTheme(Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 236
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "theme"

    .line 237
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 238
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setTheme(Ljava/lang/String;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setUseArmor(Z)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 242
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "useArmor"

    .line 243
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 244
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setUseArmor(Z)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setUseNumKeypadForSecurityTokenPin(Z)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 252
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "useNumKeypadForYubikeyPin"

    .line 253
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 254
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;--->setUseNumKeypadForSecurityTokenPin(Z)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public updateSharedPreferences(Landroid/content/Context;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 82
    sget-object v0, Lorg/sufficientlysecure/keychain/util/Preferences;->PREF_FILE_NAME:Ljava/lang/String;

    sget v1, Lorg/sufficientlysecure/keychain/util/Preferences;->PREF_FILE_MODE:I

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Preferences;--->updateSharedPreferences(Landroid/content/Context;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public upgradePreferences()V
    .locals 10

    move-object/16 v7, p0

    .line 458
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "keyServersDefaultVersion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v3, 0x9

    if-ge v0, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    const-string v4, "Upgrading preferences from %s to %s\u2026"

    const/4 v5, 0x2

    .line 462
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 468
    :pswitch_0
    invoke-direct {v7}, Lorg/sufficientlysecure/keychain/util/Preferences;->migrateToHkps()V

    :pswitch_1
    const-string v0, "light"

    .line 471
    invoke-virtual {v7, v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->setTheme(Ljava/lang/String;)V

    .line 476
    :pswitch_2
    invoke-direct {v7}, Lorg/sufficientlysecure/keychain/util/Preferences;->addOnionToSks()V

    .line 479
    :pswitch_3
    invoke-direct {v7}, Lorg/sufficientlysecure/keychain/util/Preferences;->replaceDefaultKeyserverWithUbuntu()V

    .line 484
    :goto_1
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "keyServersDefaultVersion"

    .line 485
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 486
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/util/Preferences;--->upgradePreferences()V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public useNumKeypadForSecurityTokenPin()Z
    .locals 6

    move-object/16 v3, p0

    .line 248
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "useNumKeypadForYubikeyPin"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Preferences;--->useNumKeypadForSecurityTokenPin()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
