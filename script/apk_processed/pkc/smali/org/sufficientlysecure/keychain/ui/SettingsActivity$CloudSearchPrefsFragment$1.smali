.class Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 156
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 158
    new-instance v3, Landroid/content/Intent;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyServerActivity;

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "key_servers"

    .line 161
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->access$000()Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->getKeyServers()Ljava/util/ArrayList;

    move-result-object v1

    .line 160
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 162
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;

    const/16 v1, 0x7005

    invoke-virtual {v0, v3, v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v3, 0x0

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment$1;--->onPreferenceClick(Landroid/preference/Preference;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
