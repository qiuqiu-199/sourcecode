.class Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;->initializeUseNormalProxyPref()V
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

    .line 283
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$2;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$2;---><init>(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 286
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$2;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;->access$400(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;)V

    .line 288
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$2;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;->access$500(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$2;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;->access$600(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;)V

    .line 291
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$2;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;->access$700(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;)V

    :goto_0
    const/4 v1, 0x1

    return v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer$2;--->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
