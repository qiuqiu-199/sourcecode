.class public abstract Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PresetPreferenceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 123
    invoke-direct {v0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 127
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->setPreferenceManagerFileAndMode(Landroid/preference/PreferenceManager;)V

    .line 128
    invoke-super {v1, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;--->addPreferencesFromResource(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
