.class Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;->initializeProxyTypePreference()V
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

    .line 352
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$5;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$5;---><init>(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 355
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$5;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;->access$1000(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$5;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;->access$1000(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;)Landroid/preference/ListPreference;

    move-result-object v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    .line 356
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$5;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;->access$1000(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    return v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$5;--->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
