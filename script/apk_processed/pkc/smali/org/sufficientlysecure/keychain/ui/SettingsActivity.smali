.class public Lorg/sufficientlysecure/keychain/ui/SettingsActivity;
.super Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;,
        Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;,
        Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment;,
        Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PassphrasePrefsFragment;,
        Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;,
        Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PresetPreferenceFragment;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE_KEYSERVER_PREF:I = 0x7005

.field public static final REQUEST_CODE_SMARTPGP_AUTHORITIES_PREF:I = 0x7006

.field private static final REQUEST_PERMISSION_READ_CONTACTS:I = 0xd

.field private static sPreferences:Lorg/sufficientlysecure/keychain/util/Preferences;


# instance fields
.field private mThemeChanger:Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 64
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000()Lorg/sufficientlysecure/keychain/util/Preferences;
    .locals 1

    .line 64
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->sPreferences:Lorg/sufficientlysecure/keychain/util/Preferences;

    return-object v0
.end method

.method private setupToolbar()V
    .locals 7

    move-object/16 v4, p0

    const v0, 0x1020002

    .line 101
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0c00d7

    const/4 v3, 0x0

    .line 103
    invoke-static {v4, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 105
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 106
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v0, 0x7f090326

    .line 109
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f110cf4

    .line 111
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 113
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 114
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$1;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$1;-><init>(Lorg/sufficientlysecure/keychain/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity;--->setupToolbar()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 631
    const-class v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$PassphrasePrefsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;

    .line 632
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ProxyPrefsFragment;

    .line 633
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;

    .line 634
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$ExperimentalPrefsFragment;

    .line 635
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 636
    invoke-super {v1, v2}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity;--->isValidFragment(Ljava/lang/String;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 134
    invoke-super {v1, v2}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity;--->onBuildHeaders(Ljava/util/List;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f150005

    .line 135
    invoke-virtual {v1, v0, v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 75
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->sPreferences:Lorg/sufficientlysecure/keychain/util/Preferences;

    .line 76
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;-><init>(Landroid/app/Activity;)V

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->mThemeChanger:Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    .line 77
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->mThemeChanger:Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    const v1, 0x7f12017a

    const v2, 0x7f120177

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->setThemes(II)V

    .line 78
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->mThemeChanger:Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->changeTheme()Z

    .line 79
    invoke-super {v3, v4}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->setupToolbar()V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onResume()V
    .locals 5

    move-object/16 v2, p0

    .line 86
    invoke-super {v2}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->onResume()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity;--->onResume()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->mThemeChanger:Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->changeTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->finish()V

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v2, v1, v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->overridePendingTransition(II)V

    .line 92
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    invoke-virtual {v2, v1, v1}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
