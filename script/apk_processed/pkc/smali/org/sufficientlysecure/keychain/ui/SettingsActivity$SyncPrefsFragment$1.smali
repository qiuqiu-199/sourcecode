.class Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->initializeSyncCheckBox(Landroid/preference/SwitchPreference;Landroid/accounts/Account;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authority:Ljava/lang/String;

.field final synthetic val$syncCheckBox:Landroid/preference/SwitchPreference;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;Ljava/lang/String;Landroid/accounts/Account;Landroid/preference/SwitchPreference;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 443
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->val$authority:Ljava/lang/String;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->val$account:Landroid/accounts/Account;

    iput-object p1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->val$syncCheckBox:Landroid/preference/SwitchPreference;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;Ljava/lang/String;Landroid/accounts/Account;Landroid/preference/SwitchPreference;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 447
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v0, 0x1

    if-eqz v4, :cond_1

    .line 449
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->val$authority:Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->access$1100(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 450
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->val$account:Landroid/accounts/Account;

    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->val$authority:Ljava/lang/String;

    invoke-static {v4, v5, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 451
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;

    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->val$syncCheckBox:Landroid/preference/SwitchPreference;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->val$authority:Ljava/lang/String;

    invoke-static {v4, v5, v1, v0}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->access$1200(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;Landroid/preference/SwitchPreference;Ljava/lang/String;Z)V

    return v0

    .line 454
    :cond_0
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v5

    const/16 v1, 0xd

    invoke-virtual {v4, v0, v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->requestPermissions([Ljava/lang/String;I)V

    return v5

    .line 461
    :cond_1
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->val$account:Landroid/accounts/Account;

    if-nez v4, :cond_2

    return v5

    .line 467
    :cond_2
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->val$account:Landroid/accounts/Account;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->val$authority:Ljava/lang/String;

    invoke-static {v4, v1, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 469
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->val$account:Landroid/accounts/Account;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->val$authority:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 470
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->val$syncCheckBox:Landroid/preference/SwitchPreference;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;->val$authority:Ljava/lang/String;

    invoke-static {v4, v1, v2, v5}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->access$1200(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;Landroid/preference/SwitchPreference;Ljava/lang/String;Z)V

    return v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$1;--->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
