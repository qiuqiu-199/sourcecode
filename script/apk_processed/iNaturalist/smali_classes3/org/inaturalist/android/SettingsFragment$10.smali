.class Lorg/inaturalist/android/SettingsFragment$10;
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

    .line 286
    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment$10;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 290
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "http://www.inaturalist.org/donate?utm_source=Android&utm_medium=mobile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 291
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment$10;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method
