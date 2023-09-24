.class Lorg/inaturalist/android/SettingsFragment$3;
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

    .line 148
    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment$3;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 151
    iget-object p1, p0, Lorg/inaturalist/android/SettingsFragment$3;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-static {p1}, Lorg/inaturalist/android/SettingsFragment;->access$200(Lorg/inaturalist/android/SettingsFragment;)Landroid/support/v7/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result p1

    .line 152
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment$3;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-static {v0}, Lorg/inaturalist/android/SettingsFragment;->access$200(Lorg/inaturalist/android/SettingsFragment;)Landroid/support/v7/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 153
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment$3;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-static {v0}, Lorg/inaturalist/android/SettingsFragment;->access$300(Lorg/inaturalist/android/SettingsFragment;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/INaturalistApp;->setSuggestSpecies(Z)V

    .line 156
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "setting"

    const-string v2, "InatSuggestSpeciesPrefKey"

    .line 157
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string p1, "Setting Enabled"

    goto :goto_0

    :cond_0
    const-string p1, "Setting Disabled"

    :goto_0
    invoke-virtual {v1, p1, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method
