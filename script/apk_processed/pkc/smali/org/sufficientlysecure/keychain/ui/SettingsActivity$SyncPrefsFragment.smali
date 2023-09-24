.class public Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;
.super Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncPrefsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 398
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$1100(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;Ljava/lang/String;)Z
    .locals 0

    .line 398
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->checkContactsPermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;Landroid/preference/SwitchPreference;Ljava/lang/String;Z)V
    .locals 0

    .line 398
    invoke-direct {p0, p1, p2, p3}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->setSummary(Landroid/preference/SwitchPreference;Ljava/lang/String;Z)V

    return-void
.end method

.method private checkContactsPermission(Ljava/lang/String;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "com.android.contacts"

    .line 478
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v0, 0x1

    if-nez v3, :cond_0

    return v0

    .line 484
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v3, v1, :cond_1

    return v0

    .line 488
    :cond_1
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v3, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    return v0

    :cond_2
    const/4 v3, 0x0

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;--->checkContactsPermission(Ljava/lang/String;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private initializeSyncCheckBox(Landroid/preference/SwitchPreference;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    if-eqz v3, :cond_0

    .line 438
    invoke-static {v3, p0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-direct {v1, p0}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->checkContactsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 440
    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 441
    invoke-direct {v1, v2, p0, v0}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->setSummary(Landroid/preference/SwitchPreference;Ljava/lang/String;Z)V

    .line 443
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;

    invoke-direct {v0, v1, p0, v3, v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;Ljava/lang/String;Landroid/accounts/Account;Landroid/preference/SwitchPreference;)V

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;--->initializeSyncCheckBox(Landroid/preference/SwitchPreference;Landroid/accounts/Account;Ljava/lang/String;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static final synthetic lambda$onCreate$0$SettingsActivity$SyncPrefsFragment(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private setSummary(Landroid/preference/SwitchPreference;Ljava/lang/String;Z)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move/16 p0, p3

    .line 522
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6d25a125

    if-eq v0, v1, :cond_1

    const v1, -0x3260a241

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.android.contacts"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "org.sufficientlysecure.keychain.provider"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, -0x1

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p0, :cond_3

    const v4, 0x7f1108cd

    .line 533
    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_3
    const v4, 0x7f1108cc

    .line 535
    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    :pswitch_1
    if-eqz p0, :cond_4

    const v4, 0x7f1108d0

    .line 525
    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_4
    const v4, 0x7f1108cf

    .line 527
    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;--->setSummary(Landroid/preference/SwitchPreference;Ljava/lang/String;Z)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 401
    invoke-super {v1, v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f15000b

    .line 404
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->addPreferencesFromResource(I)V

    const-string v2, "syncKeyserver"

    .line 406
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$$Lambda$0;->$instance:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const/16 v0, 0xd

    if-eq v2, v0, :cond_0

    .line 502
    invoke-super {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;--->onRequestPermissionsResult(I[Ljava/lang/String;[I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 506
    :cond_0
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v0, 0x1

    if-lez v2, :cond_1

    aget v2, p0, v3

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 511
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string p0, "org.sufficientlysecure.keychain.account"

    .line 512
    invoke-virtual {v2, p0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    aget-object v2, v2, v3

    const-string v3, "syncContacts"

    .line 513
    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    const-string p0, "com.android.contacts"

    .line 514
    invoke-static {v2, p0, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    const-string v2, "com.android.contacts"

    .line 515
    invoke-direct {v1, v3, v2, v0}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->setSummary(Landroid/preference/SwitchPreference;Ljava/lang/String;Z)V

    .line 516
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 6

    move-object/16 v3, p0

    .line 420
    invoke-super {v3}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;->onResume()V

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;--->onResume()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/KeychainApplication;->createAccountIfNecessary(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "syncContacts"

    .line 426
    invoke-virtual {v3, v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    const-string v2, "com.android.contacts"

    .line 425
    invoke-direct {v3, v1, v0, v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->initializeSyncCheckBox(Landroid/preference/SwitchPreference;Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 5

    move-object/16 v2, p0

    .line 414
    invoke-super {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;->onStop()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;--->onStop()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager;->updateKeyserverSyncScheduleAsync(Landroid/content/Context;Z)V

    return-void
.end method
