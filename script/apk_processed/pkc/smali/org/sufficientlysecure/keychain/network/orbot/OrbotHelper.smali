.class public Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;
.super Ljava/lang/Object;
.source "OrbotHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;,
        Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;
    }
.end annotation


# static fields
.field public static final ACTION_START:Ljava/lang/String; = "org.torproject.android.intent.action.START"

.field public static final ACTION_START_TOR:Ljava/lang/String; = "org.torproject.android.START_TOR"

.field public static final ACTION_STATUS:Ljava/lang/String; = "org.torproject.android.intent.action.STATUS"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "org.torproject.android.intent.extra.PACKAGE_NAME"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "org.torproject.android.intent.extra.STATUS"

.field private static final FDROID_PACKAGE_NAME:Ljava/lang/String; = "org.fdroid.fdroid"

.field public static final ORBOT_FDROID_URI:Ljava/lang/String; = "https://f-droid.org/repository/browse/?fdid=org.torproject.android"

.field public static final ORBOT_MARKET_URI:Ljava/lang/String; = "market://details?id=org.torproject.android"

.field public static final ORBOT_PACKAGE_NAME:Ljava/lang/String; = "org.torproject.android"

.field public static final ORBOT_PLAY_URI:Ljava/lang/String; = "https://play.google.com/store/apps/details?id=org.torproject.android"

.field private static final PLAY_PACKAGE_NAME:Ljava/lang/String; = "com.android.vending"

.field private static final REQUEST_CODE_STATUS:I = 0x64

.field public static final START_TOR_RESULT:I = 0x9234

.field public static final STATUS_OFF:Ljava/lang/String; = "OFF"

.field public static final STATUS_ON:Ljava/lang/String; = "ON"

.field public static final STATUS_STARTING:Ljava/lang/String; = "STARTING"

.field public static final STATUS_STARTS_DISABLED:Ljava/lang/String; = "STARTS_DISABLED"

.field public static final STATUS_STOPPING:Ljava/lang/String; = "STOPPING"


# direct methods
.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 151
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static bestPossibleOrbotStart(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Landroid/app/Activity;Z)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 397
    new-instance v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$4;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$4;-><init>(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Landroid/app/Activity;)V

    .line 408
    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$4;->startOrbotAndListen(Landroid/content/Context;Z)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;--->bestPossibleOrbotStart(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Landroid/app/Activity;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstallDialogFragmentWithThirdButton(Landroid/os/Messenger;I)Landroid/support/v4/app/DialogFragment;
    .locals 9

    move-object/16 v6, p0

    move/16 v7, p1

    const-string v3, "org.torproject.android"

    const v1, 0x7f110bc0

    const v2, 0x7f110bbd

    const/4 v5, 0x1

    move-object v0, v6

    move v4, v7

    .line 273
    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/dialog/SupportInstallDialogFragment;->newInstance(Landroid/os/Messenger;IILjava/lang/String;IZ)Lorg/sufficientlysecure/keychain/ui/dialog/SupportInstallDialogFragment;

    move-result-object v6

    return-object v6

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;--->getInstallDialogFragmentWithThirdButton(Landroid/os/Messenger;I)Landroid/support/v4/app/DialogFragment;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getOrbotInstallIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 8

    move-object/16 v5, p0

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "market://details?id=org.torproject.android"

    .line 241
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 243
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v1, 0x0

    .line 244
    invoke-virtual {v5, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 247
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "org.fdroid.fdroid"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.vending"

    .line 250
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    :cond_1
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_3

    const-string v5, "https://f-droid.org/repository/browse/?fdid=org.torproject.android"

    .line 257
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 259
    :cond_3
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    return-object v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;--->getOrbotInstallIntent(Landroid/content/Context;)Landroid/content/Intent;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getOrbotStartDialogFragment(Landroid/os/Messenger;I)Landroid/support/v4/app/DialogFragment;
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    const v0, 0x7f110bc6

    const v1, 0x7f110bc3

    .line 278
    invoke-static {v2, v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;->newInstance(Landroid/os/Messenger;III)Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;

    move-result-object v2

    return-object v2

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;--->getOrbotStartDialogFragment(Landroid/os/Messenger;I)Landroid/support/v4/app/DialogFragment;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getOrbotStartIntent()Landroid/content/Intent;
    .locals 5

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.torproject.android.intent.action.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "org.torproject.android"

    .line 235
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;--->getOrbotStartIntent()Landroid/content/Intent;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getPreferenceInstallDialogFragment()Landroid/app/DialogFragment;
    .locals 6

    const-string v0, "org.torproject.android"

    const v1, 0x7f110bc0

    const v2, 0x7f110bbd

    .line 268
    invoke-static {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/PreferenceInstallDialogFragment;->newInstance(IILjava/lang/String;)Lorg/sufficientlysecure/keychain/ui/dialog/PreferenceInstallDialogFragment;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;--->getPreferenceInstallDialogFragment()Landroid/app/DialogFragment;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getShowOrbotStartIntent()Landroid/content/Intent;
    .locals 5

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.torproject.android.START_TOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "org.torproject.android"

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 206
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;--->getShowOrbotStartIntent()Landroid/content/Intent;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 172
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v0, 0x1

    .line 173
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v1, 0x0

    return v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;--->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static isOrbotInRequiredState(Landroid/content/Context;)Z
    .locals 5

    move-object/16 v2, p0

    .line 291
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->isTorEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 294
    :cond_0
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->isOrbotInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->isOrbotRunning(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    return v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;--->isOrbotInRequiredState(Landroid/content/Context;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static isOrbotInstalled(Landroid/content/Context;)Z
    .locals 4

    move-object/16 v1, p0

    const-string v0, "org.torproject.android"

    .line 167
    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;--->isOrbotInstalled(Landroid/content/Context;)Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static isOrbotRunning(Landroid/content/Context;)Z
    .locals 4

    move-object/16 v1, p0

    .line 163
    invoke-static {}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;->getInstance()Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;->isTorRunning(Landroid/content/Context;)Z

    move-result v1

    return v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;--->isOrbotRunning(Landroid/content/Context;)Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static putOrbotInRequiredState(ILorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Landroid/support/v4/app/FragmentActivity;)Z
    .locals 6

    move/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    .line 312
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->isTorEnabled()Z

    move-result v5

    const/4 v0, 0x1

    if-nez v5, :cond_0

    return v0

    .line 316
    :cond_0
    invoke-static {p0}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->isOrbotInstalled(Landroid/content/Context;)Z

    move-result v5

    const/4 v1, 0x0

    if-nez v5, :cond_1

    .line 317
    new-instance v5, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$1;

    invoke-direct {v5, v4}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$1;-><init>(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;)V

    .line 333
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-static {v4, v3}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->getInstallDialogFragmentWithThirdButton(Landroid/os/Messenger;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v3

    .line 336
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "OrbotHelperOrbotInstallDialog"

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return v1

    .line 339
    :cond_1
    invoke-static {p0}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->isOrbotRunning(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 341
    new-instance v5, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$2;

    invoke-direct {v5, v4}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$2;-><init>(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;)V

    .line 358
    new-instance v2, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$3;

    invoke-direct {v2, v4, v5, v3, p0}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$3;-><init>(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Landroid/os/Handler;ILandroid/support/v4/app/FragmentActivity;)V

    .line 371
    invoke-virtual {v2, p0, v0}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$3;->startOrbotAndListen(Landroid/content/Context;Z)V

    return v1

    :cond_2
    return v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;--->putOrbotInRequiredState(ILorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Landroid/support/v4/app/FragmentActivity;)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static putOrbotInRequiredState(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Landroid/support/v4/app/FragmentActivity;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 383
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v0

    const v1, 0x7f110bbb

    .line 381
    invoke-static {v1, v2, v0, v3}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->putOrbotInRequiredState(ILorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Landroid/support/v4/app/FragmentActivity;)Z

    move-result v2

    return v2

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;--->putOrbotInRequiredState(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Landroid/support/v4/app/FragmentActivity;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static requestShowOrbotStart(Landroid/app/Activity;)Z
    .locals 5

    move-object/16 v2, p0

    .line 193
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->isOrbotInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->isOrbotRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-static {}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->getShowOrbotStartIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x9234

    .line 196
    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;--->requestShowOrbotStart(Landroid/app/Activity;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static requestStartTor(Landroid/content/Context;)Z
    .locals 6

    move-object/16 v3, p0

    .line 223
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->isOrbotInstalled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestStartTor "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-static {}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->getOrbotStartIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "org.torproject.android.intent.extra.PACKAGE_NAME"

    .line 226
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v3, 0x1

    return v3

    :cond_0
    return v1

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;--->requestStartTor(Landroid/content/Context;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
