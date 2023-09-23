.class Lorg/inaturalist/android/SettingsFragment$11;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/SettingsFragment;->refreshSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/SettingsFragment;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/SettingsFragment;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment$11;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 312
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment$11;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-virtual {v0}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lorg/inaturalist/android/NetworkSettings;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x24000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 313
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment$11;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method
