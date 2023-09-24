.class public Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PassphrasePrefsFragment;
.super Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PassphrasePrefsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 196
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PassphrasePrefsFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 200
    invoke-super {v0, v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PassphrasePrefsFragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f150004

    .line 203
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PassphrasePrefsFragment;->addPreferencesFromResource(I)V

    return-void
.end method
