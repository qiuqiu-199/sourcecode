.class public Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;
.super Landroid/app/Service;
.source "ContactSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService$ContactSyncAdapter;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID_SYNC_SETTINGS:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 49
    invoke-direct {v0}, Landroid/app/Service;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static enableContactsSync(Landroid/content/Context;)V
    .locals 5

    move-object/16 v2, p0

    .line 129
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/KeychainApplication;->createAccountIfNecessary(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v0, "com.android.contacts"

    const/4 v1, 0x1

    .line 134
    invoke-static {v2, v0, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v0, "com.android.contacts"

    .line 135
    invoke-static {v2, v0, v1}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;--->enableContactsSync(Landroid/content/Context;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static requestContactsSync()V
    .locals 7

    .line 111
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "OpenKeychain"

    const-string v2, "org.sufficientlysecure.keychain.account"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "force"

    const/4 v2, 0x1

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "expedited"

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "OpenKeychain"

    const-string v3, "org.sufficientlysecure.keychain.account"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.android.contacts"

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;--->requestContactsSync()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 106
    new-instance v1, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService$ContactSyncAdapter;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService$ContactSyncAdapter;-><init>(Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;)V

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService$ContactSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;--->onBind(Landroid/content/Intent;)Landroid/os/IBinder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
