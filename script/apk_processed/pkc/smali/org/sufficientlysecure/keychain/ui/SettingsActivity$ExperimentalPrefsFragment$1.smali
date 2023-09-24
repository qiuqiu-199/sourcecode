.class Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 572
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 574
    new-instance v3, Landroid/content/Intent;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 576
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;

    const/16 v1, 0x7006

    invoke-virtual {v0, v3, v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v3, 0x0

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment$1;--->onPreferenceClick(Landroid/preference/Preference;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
