.class public Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;
.super Ljava/lang/Object;
.source "AnalyticsConsentRequester.java"


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 33
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;->activity:Landroid/app/Activity;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;---><init>(Landroid/app/Activity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstance(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;
    .locals 4

    move-object/16 v1, p0

    .line 30
    new-instance v0, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;-><init>(Landroid/app/Activity;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;--->getInstance(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startExperimentalSettingsActivity()V
    .locals 6

    move-object/16 v3, p0

    .line 91
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;->activity:Landroid/app/Activity;

    const-class v2, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const-class v1, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":android:show_fragment"

    .line 93
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;--->startExperimentalSettingsActivity()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$AnalyticsConsentRequester()V
    .locals 0

    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;->startExperimentalSettingsActivity()V

    return-void
.end method

.method final synthetic lambda$maybeAskForAnalytics$0$AnalyticsConsentRequester(Lorg/sufficientlysecure/keychain/util/Preferences;Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 73
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/util/Preferences;->setAnalyticsAskedPolitely()V

    const/4 p3, 0x1

    .line 74
    invoke-virtual {p1, p3}, Lorg/sufficientlysecure/keychain/util/Preferences;->setAnalyticsGotUserConsent(Z)V

    .line 75
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->refreshSettings(Landroid/content/Context;)V

    .line 76
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;->activity:Landroid/app/Activity;

    sget-object p2, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    new-instance p3, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$3;

    invoke-direct {p3, p0}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;)V

    const p4, 0x7f110ca5

    const v0, 0x7f110cbf

    invoke-static {p1, p4, p2, p3, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;I)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object p1

    .line 77
    invoke-interface {p1}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void
.end method

.method final synthetic lambda$maybeAskForAnalytics$1$AnalyticsConsentRequester(Lorg/sufficientlysecure/keychain/util/Preferences;Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 80
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/util/Preferences;->setAnalyticsAskedPolitely()V

    const/4 p3, 0x0

    .line 81
    invoke-virtual {p1, p3}, Lorg/sufficientlysecure/keychain/util/Preferences;->setAnalyticsGotUserConsent(Z)V

    .line 82
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->refreshSettings(Landroid/content/Context;)V

    .line 83
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;->activity:Landroid/app/Activity;

    sget-object p2, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    new-instance p3, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$2;

    invoke-direct {p3, p0}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;)V

    const p4, 0x7f110ca6

    const v0, 0x7f110cbf

    invoke-static {p1, p4, p2, p3, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;I)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object p1

    .line 84
    invoke-interface {p1}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void
.end method

.method public maybeAskForAnalytics()V
    .locals 15

    move-object/16 v12, p0

    .line 38
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->isAnalyticsHasConsent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->isAnalyticsAskedPolitely()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->isAnalyticsHasConsent()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    return-void

    .line 50
    :cond_2
    :try_start_0
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;->activity:Landroid/app/Activity;

    .line 51
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "org.sufficientlysecure.keychain"

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x3

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    sub-long v10, v6, v8

    cmp-long v1, v4, v10

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    return-void

    .line 61
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long v8, v4, v6

    .line 62
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getAnalyticsLastAsked()J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-lez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_6

    return-void

    .line 67
    :cond_6
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->setAnalyticsLastAskedNow()V

    .line 69
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/KeychainApplication;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/KeychainApplication;->getAnalyticsManager()Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    move-result-object v1

    .line 70
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, v12, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f110114

    .line 71
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f11008a

    new-instance v4, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$0;

    invoke-direct {v4, v12, v0, v1}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;Lorg/sufficientlysecure/keychain/util/Preferences;Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;)V

    .line 72
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f110089

    new-instance v4, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$1;

    invoke-direct {v4, v12, v0, v1}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;Lorg/sufficientlysecure/keychain/util/Preferences;Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;)V

    .line 79
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x102000b

    .line 87
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void

    :catch_0
    return-void

    const-string v13, "M_InsDal"

    const-string v14, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;--->maybeAskForAnalytics()V"

    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
