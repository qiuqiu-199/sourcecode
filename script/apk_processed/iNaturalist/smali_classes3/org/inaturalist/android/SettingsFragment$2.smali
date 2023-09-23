.class Lorg/inaturalist/android/SettingsFragment$2;
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

    .line 123
    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment$2;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    .line 126
    iget-object p1, p0, Lorg/inaturalist/android/SettingsFragment$2;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-static {p1}, Lorg/inaturalist/android/SettingsFragment;->access$100(Lorg/inaturalist/android/SettingsFragment;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment$2;->this$0:Lorg/inaturalist/android/SettingsFragment;

    const v1, 0x7f100334

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/SettingsFragment$2;->this$0:Lorg/inaturalist/android/SettingsFragment;

    const v2, 0x7f10003e

    .line 127
    invoke-virtual {v1, v2}, Lorg/inaturalist/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/inaturalist/android/SettingsFragment$2$1;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/SettingsFragment$2$1;-><init>(Lorg/inaturalist/android/SettingsFragment$2;)V

    new-instance v3, Lorg/inaturalist/android/SettingsFragment$2$2;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/SettingsFragment$2$2;-><init>(Lorg/inaturalist/android/SettingsFragment$2;)V

    .line 126
    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/inaturalist/android/ActivityHelper;->confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x0

    return p1
.end method
