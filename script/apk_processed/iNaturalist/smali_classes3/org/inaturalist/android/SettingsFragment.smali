.class public Lorg/inaturalist/android/SettingsFragment;
.super Landroid/support/v7/preference/PreferenceFragmentCompat;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/SettingsFragment$DividerItemDecorationPreferences;
    }
.end annotation


# static fields
.field private static final DONATION_URL:Ljava/lang/String; = "http://www.inaturalist.org/donate?utm_source=Android&utm_medium=mobile"

.field private static final REQUEST_CODE_LOGIN:I = 0x1000


# instance fields
.field private mAbout:Landroid/support/v7/preference/Preference;

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mAutoSyncPreference:Landroid/support/v7/preference/CheckBoxPreference;

.field private mContactSupport:Landroid/support/v7/preference/Preference;

.field private mDebugLogsClickCount:I

.field private mDonate:Landroid/support/v7/preference/Preference;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mLanguagePreference:Landroid/support/v7/preference/ListPreference;

.field private mNetworkPreference:Landroid/support/v7/preference/Preference;

.field private mPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mShowScientificNameFirstPreference:Landroid/support/v7/preference/CheckBoxPreference;

.field private mSuggestSpeciesPreference:Landroid/support/v7/preference/CheckBoxPreference;

.field private mUsernamePreference:Landroid/support/v7/preference/Preference;

.field private mVersion:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lorg/inaturalist/android/SettingsFragment;->mDebugLogsClickCount:I

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/SettingsFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/inaturalist/android/SettingsFragment;->signOut()V

    return-void
.end method

.method static synthetic access$100(Lorg/inaturalist/android/SettingsFragment;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/inaturalist/android/SettingsFragment;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/SettingsFragment;)Landroid/support/v7/preference/CheckBoxPreference;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/inaturalist/android/SettingsFragment;->mSuggestSpeciesPreference:Landroid/support/v7/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/SettingsFragment;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/inaturalist/android/SettingsFragment;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$400(Lorg/inaturalist/android/SettingsFragment;)Landroid/support/v7/preference/CheckBoxPreference;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/inaturalist/android/SettingsFragment;->mAutoSyncPreference:Landroid/support/v7/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic access$500(Lorg/inaturalist/android/SettingsFragment;)Landroid/support/v7/preference/CheckBoxPreference;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/inaturalist/android/SettingsFragment;->mShowScientificNameFirstPreference:Landroid/support/v7/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic access$600(Lorg/inaturalist/android/SettingsFragment;)Landroid/support/v7/preference/ListPreference;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/inaturalist/android/SettingsFragment;->mLanguagePreference:Landroid/support/v7/preference/ListPreference;

    return-object p0
.end method

.method static synthetic access$700(Lorg/inaturalist/android/SettingsFragment;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$800(Lorg/inaturalist/android/SettingsFragment;)I
    .locals 0

    .line 39
    iget p0, p0, Lorg/inaturalist/android/SettingsFragment;->mDebugLogsClickCount:I

    return p0
.end method

.method static synthetic access$802(Lorg/inaturalist/android/SettingsFragment;I)I
    .locals 0

    .line 39
    iput p1, p0, Lorg/inaturalist/android/SettingsFragment;->mDebugLogsClickCount:I

    return p1
.end method

.method static synthetic access$808(Lorg/inaturalist/android/SettingsFragment;)I
    .locals 2

    .line 39
    iget v0, p0, Lorg/inaturalist/android/SettingsFragment;->mDebugLogsClickCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/inaturalist/android/SettingsFragment;->mDebugLogsClickCount:I

    return v0
.end method

.method static synthetic access$900(Lorg/inaturalist/android/SettingsFragment;)Landroid/content/SharedPreferences;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/inaturalist/android/SettingsFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private refreshLanguageSettings()V
    .locals 4

    .line 320
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_locale"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    sget-object v1, Lorg/inaturalist/android/LocaleHelper;->SupportedLocales:[Ljava/lang/String;

    const-string v2, ""

    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 325
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mLanguagePreference:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f100389

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    .line 326
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mLanguagePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 328
    :cond_0
    :goto_0
    array-length v2, v1

    if-ge v3, v2, :cond_2

    .line 329
    aget-object v2, v1, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mLanguagePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mLanguagePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private refreshSettings()V
    .locals 7

    .line 101
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "username"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mUsernamePreference:Landroid/support/v7/preference/Preference;

    const v3, 0x7f100286

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 106
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mUsernamePreference:Landroid/support/v7/preference/Preference;

    const v3, 0x7f100208

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 107
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mUsernamePreference:Landroid/support/v7/preference/Preference;

    new-instance v3, Lorg/inaturalist/android/SettingsFragment$1;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/SettingsFragment$1;-><init>(Lorg/inaturalist/android/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v3, p0, Lorg/inaturalist/android/SettingsFragment;->mUsernamePreference:Landroid/support/v7/preference/Preference;

    const v4, 0x7f10020a

    invoke-virtual {p0, v4}, Lorg/inaturalist/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mUsernamePreference:Landroid/support/v7/preference/Preference;

    const v3, 0x7f100209

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 123
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mUsernamePreference:Landroid/support/v7/preference/Preference;

    new-instance v3, Lorg/inaturalist/android/SettingsFragment$2;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/SettingsFragment$2;-><init>(Lorg/inaturalist/android/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 147
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mSuggestSpeciesPreference:Landroid/support/v7/preference/CheckBoxPreference;

    iget-object v3, p0, Lorg/inaturalist/android/SettingsFragment;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v3}, Lorg/inaturalist/android/INaturalistApp;->getSuggestSpecies()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 148
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mSuggestSpeciesPreference:Landroid/support/v7/preference/CheckBoxPreference;

    new-instance v3, Lorg/inaturalist/android/SettingsFragment$3;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/SettingsFragment$3;-><init>(Lorg/inaturalist/android/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 173
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mAutoSyncPreference:Landroid/support/v7/preference/CheckBoxPreference;

    iget-object v3, p0, Lorg/inaturalist/android/SettingsFragment;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v3}, Lorg/inaturalist/android/INaturalistApp;->getAutoSync()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mAutoSyncPreference:Landroid/support/v7/preference/CheckBoxPreference;

    new-instance v3, Lorg/inaturalist/android/SettingsFragment$4;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/SettingsFragment$4;-><init>(Lorg/inaturalist/android/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 199
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mShowScientificNameFirstPreference:Landroid/support/v7/preference/CheckBoxPreference;

    iget-object v3, p0, Lorg/inaturalist/android/SettingsFragment;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v3}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 200
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mShowScientificNameFirstPreference:Landroid/support/v7/preference/CheckBoxPreference;

    new-instance v3, Lorg/inaturalist/android/SettingsFragment$5;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/SettingsFragment$5;-><init>(Lorg/inaturalist/android/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 223
    invoke-direct {p0}, Lorg/inaturalist/android/SettingsFragment;->refreshLanguageSettings()V

    .line 224
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mLanguagePreference:Landroid/support/v7/preference/ListPreference;

    new-instance v3, Lorg/inaturalist/android/SettingsFragment$6;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/SettingsFragment$6;-><init>(Lorg/inaturalist/android/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 239
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mVersion:Landroid/support/v7/preference/Preference;

    new-instance v3, Lorg/inaturalist/android/SettingsFragment$7;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/SettingsFragment$7;-><init>(Lorg/inaturalist/android/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 255
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mContactSupport:Landroid/support/v7/preference/Preference;

    new-instance v3, Lorg/inaturalist/android/SettingsFragment$8;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/SettingsFragment$8;-><init>(Lorg/inaturalist/android/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 277
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mAbout:Landroid/support/v7/preference/Preference;

    new-instance v3, Lorg/inaturalist/android/SettingsFragment$9;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/SettingsFragment$9;-><init>(Lorg/inaturalist/android/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 286
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mDonate:Landroid/support/v7/preference/Preference;

    new-instance v3, Lorg/inaturalist/android/SettingsFragment$10;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/SettingsFragment$10;-><init>(Lorg/inaturalist/android/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 299
    :try_start_0
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 300
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 302
    iget-object v3, p0, Lorg/inaturalist/android/SettingsFragment;->mVersion:Landroid/support/v7/preference/Preference;

    const-string v4, "%s (%d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v5, v2

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 304
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 307
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lorg/inaturalist/android/SettingsFragment;->mNetworkPreference:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lorg/inaturalist/android/SettingsFragment;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mNetworkPreference:Landroid/support/v7/preference/Preference;

    new-instance v1, Lorg/inaturalist/android/SettingsFragment$11;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/SettingsFragment$11;-><init>(Lorg/inaturalist/android/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private signOut()V
    .locals 7

    .line 396
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v1, "Logout"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "login_type"

    sget-object v2, Lorg/inaturalist/android/INaturalistService$LoginType;->OAUTH_PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistService$LoginType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/inaturalist/android/INaturalistService$LoginType;->valueOf(Ljava/lang/String;)Lorg/inaturalist/android/INaturalistService$LoginType;

    move-result-object v0

    .line 400
    sget-object v1, Lorg/inaturalist/android/INaturalistService$LoginType;->FACEBOOK:Lorg/inaturalist/android/INaturalistService$LoginType;

    if-ne v0, v1, :cond_0

    .line 401
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 404
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "username"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 405
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "credentials"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 406
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "password"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 407
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "login_type"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 408
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_sync_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 409
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "observation_count"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 410
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "user_icon_url"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 411
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "user_bio"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 412
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "user_email"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 413
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "user_full_name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 414
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_user_details_refresh_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 415
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "jwt_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "jwt_token_expiration"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 417
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_observation_errors"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "unread_activities"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 419
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "prefers_scientific_name_first"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 420
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 424
    iget-object v0, p0, Lorg/inaturalist/android/SettingsFragment;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "position ASC, id ASC, _id ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 428
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 429
    new-instance v1, Lorg/inaturalist/android/ObservationPhoto;

    invoke-direct {v1, v0}, Lorg/inaturalist/android/ObservationPhoto;-><init>(Landroid/database/Cursor;)V

    .line 430
    iget-object v1, v1, Lorg/inaturalist/android/ObservationPhoto;->photo_filename:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 433
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 438
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 440
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 442
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 443
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 444
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/ProjectFieldValue;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 447
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "observations_photo_info.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 450
    invoke-direct {p0}, Lorg/inaturalist/android/SettingsFragment;->refreshSettings()V

    .line 451
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/SettingsActivity;

    invoke-virtual {v0}, Lorg/inaturalist/android/SettingsActivity;->refreshUserDetails()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 385
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x1000

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 389
    invoke-direct {p0}, Lorg/inaturalist/android/SettingsFragment;->refreshSettings()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-direct {p0}, Lorg/inaturalist/android/SettingsFragment;->refreshSettings()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const/high16 p1, 0x7f130000

    .line 63
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/SettingsFragment;->addPreferencesFromResource(I)V

    .line 65
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object p1

    const-string p2, "iNaturalistPreferences"

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lorg/inaturalist/android/SettingsFragment;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 71
    :cond_0
    new-instance p1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {p1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object p1

    invoke-static {p1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 74
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object p1

    const-string p2, "username"

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment;->mUsernamePreference:Landroid/support/v7/preference/Preference;

    .line 75
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object p1

    const-string p2, "auto_sync"

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment;->mAutoSyncPreference:Landroid/support/v7/preference/CheckBoxPreference;

    .line 76
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object p1

    const-string p2, "suggest_species"

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment;->mSuggestSpeciesPreference:Landroid/support/v7/preference/CheckBoxPreference;

    .line 77
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object p1

    const-string p2, "prefers_scientific_name_first"

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment;->mShowScientificNameFirstPreference:Landroid/support/v7/preference/CheckBoxPreference;

    .line 78
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object p1

    const-string p2, "language"

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment;->mLanguagePreference:Landroid/support/v7/preference/ListPreference;

    .line 79
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object p1

    const-string p2, "inat_network"

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment;->mNetworkPreference:Landroid/support/v7/preference/Preference;

    .line 80
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object p1

    const-string p2, "contact_support"

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment;->mContactSupport:Landroid/support/v7/preference/Preference;

    .line 81
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object p1

    const-string p2, "about"

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment;->mAbout:Landroid/support/v7/preference/Preference;

    .line 82
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object p1

    const-string p2, "donate"

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment;->mDonate:Landroid/support/v7/preference/Preference;

    .line 83
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object p1

    const-string p2, "version"

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment;->mVersion:Landroid/support/v7/preference/Preference;

    .line 85
    new-instance p1, Lorg/inaturalist/android/ActivityHelper;

    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 86
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "iNaturalistPreferences"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment;->mPreferences:Landroid/content/SharedPreferences;

    .line 87
    iget-object p1, p0, Lorg/inaturalist/android/SettingsFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-direct {p0}, Lorg/inaturalist/android/SettingsFragment;->refreshSettings()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 341
    invoke-super {p0, p1, p2}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 342
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01b0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 343
    new-instance p2, Lorg/inaturalist/android/SettingsFragment$DividerItemDecorationPreferences;

    .line 344
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1, v1}, Lorg/inaturalist/android/SettingsFragment$DividerItemDecorationPreferences;-><init>(Lorg/inaturalist/android/SettingsFragment;Landroid/content/Context;II)V

    .line 343
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public sendDebugLog()V
    .locals 10

    .line 457
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "logcat.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logcat -f "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -r 8136"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 461
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 463
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/SettingsFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "username"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 467
    :try_start_1
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 468
    invoke-virtual {p0}, Lorg/inaturalist/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    goto :goto_1

    :catch_1
    move-exception v4

    .line 470
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 475
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "vnd.android.cursor.dir/email"

    .line 476
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v5, "android.intent.extra.STREAM"

    .line 479
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_1

    const-string v3, "android.intent.extra.SUBJECT"

    const-string v6, "iNaturalist Android Logs (user id - %s; Android API = %d)"

    .line 481
    new-array v0, v0, [Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, "N/A"

    :cond_0
    aput-object v1, v0, v2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_1
    const-string v6, "android.intent.extra.SUBJECT"

    const-string v7, "iNaturalist Android Logs (version %s - %s; user id - %s; Android API = %d)"

    const/4 v8, 0x4

    .line 483
    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v9, v8, v2

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v5

    if-nez v1, :cond_2

    const-string v1, "N/A"

    :cond_2
    aput-object v1, v8, v0

    const/4 v0, 0x3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const-string v0, "android.intent.extra.EMAIL"

    .line 485
    new-array v1, v5, [Ljava/lang/String;

    const v3, 0x7f1001cc

    invoke-virtual {p0, v3}, Lorg/inaturalist/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f100323

    .line 487
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
