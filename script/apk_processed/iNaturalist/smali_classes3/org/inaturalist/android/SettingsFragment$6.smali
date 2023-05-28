.class Lorg/inaturalist/android/SettingsFragment$6;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


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

    .line 224
    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment$6;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 227
    iget-object p1, p0, Lorg/inaturalist/android/SettingsFragment$6;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-static {p1}, Lorg/inaturalist/android/SettingsFragment;->access$600(Lorg/inaturalist/android/SettingsFragment;)Landroid/support/v7/preference/ListPreference;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    .line 228
    sget-object p2, Lorg/inaturalist/android/LocaleHelper;->SupportedLocales:[Ljava/lang/String;

    aget-object p1, p2, p1

    .line 229
    iget-object p2, p0, Lorg/inaturalist/android/SettingsFragment$6;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-static {p2}, Lorg/inaturalist/android/SettingsFragment;->access$700(Lorg/inaturalist/android/SettingsFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "pref_locale"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    iget-object p1, p0, Lorg/inaturalist/android/SettingsFragment$6;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-static {p1}, Lorg/inaturalist/android/SettingsFragment;->access$700(Lorg/inaturalist/android/SettingsFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    iget-object p1, p0, Lorg/inaturalist/android/SettingsFragment$6;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-static {p1}, Lorg/inaturalist/android/SettingsFragment;->access$300(Lorg/inaturalist/android/SettingsFragment;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->applyLocaleSettings()V

    .line 232
    iget-object p1, p0, Lorg/inaturalist/android/SettingsFragment$6;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-static {p1}, Lorg/inaturalist/android/SettingsFragment;->access$300(Lorg/inaturalist/android/SettingsFragment;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->restart()V

    .line 233
    iget-object p1, p0, Lorg/inaturalist/android/SettingsFragment$6;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-virtual {p1}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    const/4 p1, 0x0

    return p1
.end method
