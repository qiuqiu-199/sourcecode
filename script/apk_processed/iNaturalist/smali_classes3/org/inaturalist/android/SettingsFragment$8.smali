.class Lorg/inaturalist/android/SettingsFragment$8;
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

    .line 255
    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment$8;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8

    const/4 p1, 0x0

    .line 260
    :try_start_0
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment$8;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-virtual {v0}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lorg/inaturalist/android/SettingsFragment$8;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-virtual {v1}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 264
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "message/rfc822"

    .line 265
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.EMAIL"

    const/4 v3, 0x1

    .line 266
    new-array v4, v3, [Ljava/lang/String;

    iget-object v5, p0, Lorg/inaturalist/android/SettingsFragment$8;->this$0:Lorg/inaturalist/android/SettingsFragment;

    const v6, 0x7f1001cc

    invoke-virtual {v5, v6}, Lorg/inaturalist/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    iget-object v2, p0, Lorg/inaturalist/android/SettingsFragment$8;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-static {v2}, Lorg/inaturalist/android/SettingsFragment;->access$900(Lorg/inaturalist/android/SettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "username"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.extra.SUBJECT"

    .line 268
    iget-object v5, p0, Lorg/inaturalist/android/SettingsFragment$8;->this$0:Lorg/inaturalist/android/SettingsFragment;

    const v6, 0x7f1001cd

    invoke-virtual {v5, v6}, Lorg/inaturalist/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v7, v6, p1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    const/4 v0, 0x2

    if-nez v2, :cond_0

    const-string v2, "N/A"

    :cond_0
    aput-object v2, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment$8;->this$0:Lorg/inaturalist/android/SettingsFragment;

    iget-object v2, p0, Lorg/inaturalist/android/SettingsFragment$8;->this$0:Lorg/inaturalist/android/SettingsFragment;

    const v3, 0x7f100323

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 271
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return p1
.end method
