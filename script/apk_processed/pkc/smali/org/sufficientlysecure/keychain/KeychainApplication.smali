.class public Lorg/sufficientlysecure/keychain/KeychainApplication;
.super Landroid/app/Application;
.source "KeychainApplication.java"


# static fields
.field public static qrCodeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field analyticsManager:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/KeychainApplication;->qrCodeCache:Ljava/util/HashMap;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/KeychainApplication;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 44
    invoke-direct {v0}, Landroid/app/Application;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/KeychainApplication;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createAccountIfNecessary(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 10

    move-object/16 v7, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 121
    :try_start_0
    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "org.sufficientlysecure.keychain.account"

    .line 122
    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 124
    new-instance v4, Landroid/accounts/Account;

    const-string v5, "OpenKeychain"

    const-string v6, "org.sufficientlysecure.keychain.account"

    invoke-direct {v4, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    array-length v5, v3

    if-nez v5, :cond_1

    .line 126
    invoke-virtual {v2, v4, v1, v1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "error when adding account via addAccountExplicitly"

    .line 127
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    return-object v4

    .line 133
    :cond_1
    aget-object v2, v3, v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "SecurityException when adding the account"

    .line 136
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const v0, 0x7f110c3d

    const/4 v2, 0x1

    .line 137
    invoke-static {v7, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    return-object v1

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/KeychainApplication;--->createAccountIfNecessary(Landroid/content/Context;)Landroid/accounts/Account;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private updateLoggingStatus()V
    .locals 3

    move-object/16 v0, p0

    .line 154
    invoke-static {}, Ltimber/log/Timber;->uprootAll()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/KeychainApplication;--->updateLoggingStatus()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getAnalyticsManager()Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;
    .locals 4

    move-object/16 v1, p0

    .line 162
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/KeychainApplication;->analyticsManager:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/KeychainApplication;--->getAnalyticsManager()Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate()V
    .locals 7

    move-object/16 v4, p0

    .line 53
    invoke-super {v4}, Landroid/app/Application;->onCreate()V

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/KeychainApplication;--->onCreate()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BC"

    .line 63
    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 72
    invoke-static {}, Lorg/sufficientlysecure/keychain/util/PRNGFixes;->apply()V

    const-string v0, "Bouncy Castle set and PRNG Fixes applied!"

    const/4 v1, 0x0

    .line 73
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/KeychainApplication;->updateLoggingStatus()V

    .line 88
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/KeychainApplication;->createAccountIfNecessary(Landroid/content/Context;)Landroid/accounts/Account;

    .line 90
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->isAppExecutedFirstTime()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->setAppExecutedFirstTime(Z)V

    .line 94
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;->enableContactsSync(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->setPrefVersionToCurrentVersion()V

    .line 100
    :cond_0
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->upgradePreferences()V

    const-string v0, "hkps.pool.sks-keyservers.net"

    .line 102
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/KeychainApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "hkps.pool.sks-keyservers.net.CA.cer"

    invoke-static {v0, v2, v3}, Lorg/sufficientlysecure/keychain/network/TlsCertificatePinning;->addPinnedCertificate(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/String;)V

    const-string v0, "pgp.mit.edu"

    .line 103
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/KeychainApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "pgp.mit.edu.cer"

    invoke-static {v0, v2, v3}, Lorg/sufficientlysecure/keychain/network/TlsCertificatePinning;->addPinnedCertificate(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/String;)V

    const-string v0, "api.keybase.io"

    .line 104
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/KeychainApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "api.keybase.io.CA.cer"

    invoke-static {v0, v2, v3}, Lorg/sufficientlysecure/keychain/network/TlsCertificatePinning;->addPinnedCertificate(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/String;)V

    const-string v0, "keyserver.ubuntu.com"

    .line 105
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/KeychainApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "DigiCertGlobalRootCA.cer"

    invoke-static {v0, v2, v3}, Lorg/sufficientlysecure/keychain/network/TlsCertificatePinning;->addPinnedCertificate(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 107
    invoke-static {v4, v1}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager;->updateKeyserverSyncScheduleAsync(Landroid/content/Context;Z)V

    .line 109
    invoke-static {}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->scheduleCleanupImmediately()V

    .line 111
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/KeychainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    move-result-object v0

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/KeychainApplication;->analyticsManager:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    .line 112
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/KeychainApplication;->analyticsManager:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->initialize(Landroid/app/Application;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 146
    invoke-super {v1, v2}, Landroid/app/Application;->onTrimMemory(I)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeychainApplication;--->onTrimMemory(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x14

    if-lt v2, v0, :cond_0

    .line 149
    sget-object v2, Lorg/sufficientlysecure/keychain/KeychainApplication;->qrCodeCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method
