.class Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;->initializeEditTextPreferences()V
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

    .line 302
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$3;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$3;---><init>(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 305
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$3;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;->access$100(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;)Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 306
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v3, 0x7f110be6

    .line 307
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v2, v3, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    .line 311
    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    const/4 v2, 0x0

    return v2

    .line 314
    :cond_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$3;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;->access$800(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;)Landroid/preference/EditTextPreference;

    move-result-object v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    return v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$3;--->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
