.class Lorg/inaturalist/android/SettingsFragment$7;
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

    .line 239
    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment$7;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 242
    iget-object p1, p0, Lorg/inaturalist/android/SettingsFragment$7;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-static {p1}, Lorg/inaturalist/android/SettingsFragment;->access$808(Lorg/inaturalist/android/SettingsFragment;)I

    .line 244
    iget-object p1, p0, Lorg/inaturalist/android/SettingsFragment$7;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-static {p1}, Lorg/inaturalist/android/SettingsFragment;->access$800(Lorg/inaturalist/android/SettingsFragment;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-lt p1, v1, :cond_0

    .line 246
    iget-object p1, p0, Lorg/inaturalist/android/SettingsFragment$7;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-virtual {p1}, Lorg/inaturalist/android/SettingsFragment;->sendDebugLog()V

    .line 247
    iget-object p1, p0, Lorg/inaturalist/android/SettingsFragment$7;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-static {p1, v0}, Lorg/inaturalist/android/SettingsFragment;->access$802(Lorg/inaturalist/android/SettingsFragment;I)I

    return v0

    :cond_0
    return v0
.end method
