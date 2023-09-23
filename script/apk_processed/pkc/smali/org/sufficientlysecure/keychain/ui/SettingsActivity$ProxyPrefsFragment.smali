.class public Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment;
.super Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProxyPrefsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 207
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 211
    invoke-super {v0, v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;-><init>(Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;)V

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment$Initializer;->initialize()V

    return-void
.end method
