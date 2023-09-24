.class Lorg/inaturalist/android/SettingsFragment$5;
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

    .line 200
    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment$5;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    .line 203
    iget-object p1, p0, Lorg/inaturalist/android/SettingsFragment$5;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-static {p1}, Lorg/inaturalist/android/SettingsFragment;->access$500(Lorg/inaturalist/android/SettingsFragment;)Landroid/support/v7/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result p1

    .line 204
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment$5;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-static {v0}, Lorg/inaturalist/android/SettingsFragment;->access$500(Lorg/inaturalist/android/SettingsFragment;)Landroid/support/v7/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 205
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment$5;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-static {v0}, Lorg/inaturalist/android/SettingsFragment;->access$300(Lorg/inaturalist/android/SettingsFragment;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/INaturalistApp;->setShowScientificNameFirst(Z)V

    .line 207
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment$5;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-static {v0}, Lorg/inaturalist/android/SettingsFragment;->access$300(Lorg/inaturalist/android/SettingsFragment;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_UPDATE_CURRENT_USER_DETAILS:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/inaturalist/android/SettingsFragment$5;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-virtual {v3}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "prefers_scientific_name_first"

    .line 211
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 213
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string p1, "user"

    .line 215
    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v2, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 216
    iget-object p1, p0, Lorg/inaturalist/android/SettingsFragment$5;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-virtual {p1}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
