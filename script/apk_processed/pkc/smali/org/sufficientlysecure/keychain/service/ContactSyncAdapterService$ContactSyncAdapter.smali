.class Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService$ContactSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "ContactSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactSyncAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 57
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService$ContactSyncAdapter;->this$0:Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;

    const/4 v0, 0x1

    .line 58
    invoke-direct {v1, v2, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService$ContactSyncAdapter;---><init>(Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    const-string v1, "Performing a contact sync!"

    const/4 v2, 0x0

    .line 64
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    new-instance v1, Lorg/sufficientlysecure/keychain/util/ContactHelper;

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService$ContactSyncAdapter;->this$0:Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/util/ContactHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->writeKeysToContacts()V

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService$ContactSyncAdapter;--->onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSecurityException(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 73
    invoke-super {v0, v1, v2, p0, p1}, Landroid/content/AbstractThreadedSyncAdapter;->onSecurityException(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)V

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService$ContactSyncAdapter;--->onSecurityException(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 76
    invoke-static {v1, p0, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 78
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService$ContactSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/NotificationChannelManager;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/NotificationChannelManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/NotificationChannelManager;->createNotificationChannelsIfNecessary()V

    .line 81
    new-instance v1, Landroid/content/Intent;

    iget-object p0, v0, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService$ContactSyncAdapter;->this$0:Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;

    const-class p1, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;

    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, ":android:show_fragment"

    .line 82
    const-class p1, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object p0, v0, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService$ContactSyncAdapter;->this$0:Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;

    const/high16 p1, 0x8000000

    .line 85
    invoke-static {p0, v2, v1, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 91
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object p0, v0, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService$ContactSyncAdapter;->this$0:Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;

    const-string p1, "permissionRequests"

    invoke-direct {v2, p0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 93
    invoke-virtual {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const p0, 0x7f0800e5

    .line 94
    invoke-virtual {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object p0, v0, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService$ContactSyncAdapter;->this$0:Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;

    .line 95
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f060199

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object p0, v0, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService$ContactSyncAdapter;->this$0:Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;

    const p1, 0x7f110cd2

    .line 96
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object p0, v0, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService$ContactSyncAdapter;->this$0:Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;

    const p1, 0x7f110cd1

    .line 97
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 98
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 99
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService$ContactSyncAdapter;->this$0:Lorg/sufficientlysecure/keychain/service/ContactSyncAdapterService;

    invoke-static {v2}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v2

    .line 100
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/16 p0, 0xd

    invoke-virtual {v2, p0, v1}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method
