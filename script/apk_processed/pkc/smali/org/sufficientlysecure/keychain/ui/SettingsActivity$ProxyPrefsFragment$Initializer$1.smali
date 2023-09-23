.class Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;->initializeUseTorPref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 256
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$1;---><init>(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 259
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;->access$100(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;)Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 260
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v0, 0x1

    if-eqz v4, :cond_1

    .line 261
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->isOrbotInstalled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Prompting to install Tor"

    const/4 v0, 0x0

    .line 263
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v4, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    invoke-static {}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->getPreferenceInstallDialogFragment()Landroid/app/DialogFragment;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v1, "installDialog"

    invoke-virtual {v4, v3, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return v0

    .line 269
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;->access$200(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;)V

    return v0

    .line 275
    :cond_1
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;->access$300(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;)V

    return v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$1;--->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
