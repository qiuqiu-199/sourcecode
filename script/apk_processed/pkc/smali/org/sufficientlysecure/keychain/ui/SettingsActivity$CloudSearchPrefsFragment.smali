.class public Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;
.super Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudSearchPrefsFragment"
.end annotation


# instance fields
.field private mKeyServerPreference:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 141
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;->mKeyServerPreference:Landroid/preference/PreferenceScreen;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static keyserverSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    move-object/16 v5, p0

    .line 185
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->access$000()Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getKeyServers()Ljava/util/ArrayList;

    move-result-object v0

    .line 186
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const v0, 0x7f0f001f

    .line 186
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1108bf

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->access$000()Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v5

    .line 189
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferredKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v5

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;--->keyserverSummary(Landroid/content/Context;)Ljava/lang/String;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    const/16 v0, 0x7005

    if-eq v2, v0, :cond_0

    .line 178
    invoke-super {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;->mKeyServerPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;->keyserverSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 147
    invoke-super {v1, v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f150002

    .line 150
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;->addPreferencesFromResource(I)V

    const-string v2, "keyServers"

    .line 152
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;->mKeyServerPreference:Landroid/preference/PreferenceScreen;

    .line 153
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;->mKeyServerPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;->keyserverSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;->mKeyServerPreference:Landroid/preference/PreferenceScreen;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;)V

    .line 156
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
