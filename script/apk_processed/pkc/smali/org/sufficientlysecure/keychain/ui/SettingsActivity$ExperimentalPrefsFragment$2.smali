.class final Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;->initializeTheme(Landroid/preference/ListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$themePref:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Landroid/preference/ListPreference;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 617
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment$2;->val$themePref:Landroid/preference/ListPreference;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment$2;---><init>(Landroid/preference/ListPreference;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 619
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment$2;->val$themePref:Landroid/preference/ListPreference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment$2;->val$themePref:Landroid/preference/ListPreference;

    .line 620
    invoke-virtual {v4}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v1, 0x7f1108a1

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 619
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment$2;->val$themePref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->recreate()V

    const/4 v3, 0x1

    return v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment$2;--->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
