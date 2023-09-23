.class public Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;
.super Ljava/lang/Object;
.source "ThemeChanger.java"


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mCurrentTheme:Ljava/lang/String;

.field private mDarkResId:I

.field private mLightResId:I

.field private mPreferences:Lorg/sufficientlysecure/keychain/util/Preferences;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 54
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->mCurrentTheme:Ljava/lang/String;

    .line 55
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->mContext:Landroid/app/Activity;

    .line 56
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->mPreferences:Lorg/sufficientlysecure/keychain/util/Preferences;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;---><init>(Landroid/app/Activity;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;
    .locals 5

    move-object/16 v2, p0

    .line 37
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    const-string v1, "dark"

    .line 42
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getTheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f120177

    invoke-direct {v0, v2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f12017a

    invoke-direct {v0, v2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;--->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public changeTheme()Z
    .locals 7

    move-object/16 v4, p0

    .line 66
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->mPreferences:Lorg/sufficientlysecure/keychain/util/Preferences;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getTheme()Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->mCurrentTheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->mCurrentTheme:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 71
    :cond_0
    iget v1, v4, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->mLightResId:I

    const-string v2, "dark"

    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    iget v1, v4, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->mDarkResId:I

    .line 76
    :cond_1
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->mContext:Landroid/app/Activity;

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 77
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 78
    iput-object v0, v4, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->mCurrentTheme:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;--->changeTheme()Z"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setThemes(II)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    .line 50
    iput v1, v0, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->mLightResId:I

    .line 51
    iput v2, v0, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->mDarkResId:I

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;--->setThemes(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
