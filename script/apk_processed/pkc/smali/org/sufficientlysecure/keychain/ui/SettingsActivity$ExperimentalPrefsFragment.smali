.class public Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;
.super Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExperimentalPrefsFragment"
.end annotation


# instance fields
.field private mSmartPGPAuthoritiesPreference:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 546
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 548
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;->mSmartPGPAuthoritiesPreference:Landroid/preference/PreferenceScreen;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static initializeTheme(Landroid/preference/ListPreference;)V
    .locals 6

    move-object/16 v3, p0

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1108a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 617
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment$2;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment$2;-><init>(Landroid/preference/ListPreference;)V

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;--->initializeTheme(Landroid/preference/ListPreference;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    move/16 v6, p2

    move-object/16 p0, p3

    const/16 v0, 0x7006

    if-eq v5, v0, :cond_0

    .line 608
    invoke-super {v4, v5, v6, p0}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 595
    :cond_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;->readKeystore(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 599
    :try_start_0
    invoke-virtual {v5}, Ljava/security/KeyStore;->size()I

    move-result v5
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v5, 0x0

    .line 603
    :goto_0
    iget-object p0, v4, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;->mSmartPGPAuthoritiesPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f001d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 552
    invoke-super {v6, v7}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x7f150003

    .line 555
    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;->addPreferencesFromResource(I)V

    const-string v7, "theme"

    .line 557
    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    invoke-static {v7}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;->initializeTheme(Landroid/preference/ListPreference;)V

    const-string v7, "smartpgp_authorities"

    .line 559
    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, v6, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;->mSmartPGPAuthoritiesPreference:Landroid/preference/PreferenceScreen;

    .line 561
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;->readKeystore(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v7

    const/4 v0, 0x0

    if-eqz v7, :cond_0

    .line 565
    :try_start_0
    invoke-virtual {v7}, Ljava/security/KeyStore;->size()I

    move-result v7
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v7, 0x0

    .line 569
    :goto_0
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;->mSmartPGPAuthoritiesPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v7, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;->mSmartPGPAuthoritiesPreference:Landroid/preference/PreferenceScreen;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment$1;

    invoke-direct {v0, v6}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;)V

    .line 572
    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPause()V
    .locals 5

    move-object/16 v2, p0

    .line 584
    invoke-super {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;->onPause()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;--->onPause()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/KeychainApplication;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/KeychainApplication;->getAnalyticsManager()Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->refreshSettings(Landroid/content/Context;)V

    return-void
.end method
