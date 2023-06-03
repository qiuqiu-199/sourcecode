.class public Lorg/inaturalist/android/INaturalistApp;
.super Landroid/support/multidex/MultiDexApplication;
.source "INaturalistApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;,
        Lorg/inaturalist/android/INaturalistApp$OnDownloadFileProgress;,
        Lorg/inaturalist/android/INaturalistApp$OnLocationStatus;,
        Lorg/inaturalist/android/INaturalistApp$INotificationCallback;
    }
.end annotation


# static fields
.field public static DATETIME_FORMAT:Ljava/text/SimpleDateFormat; = null

.field public static DATE_FORMAT:Ljava/text/SimpleDateFormat; = null

.field public static final NO_OBSERVATION:I = -0x1

.field private static final PERMISSIONS_REQUEST:I = 0x1234

.field public static SHORT_DATE_FORMAT:Ljava/text/SimpleDateFormat; = null

.field public static SHORT_TIME_FORMAT:Ljava/text/SimpleDateFormat; = null

.field private static SYNC_NOTIFICATION:Ljava/lang/Integer; = null

.field private static final TAG:Ljava/lang/String; = "INAT: Application"

.field public static VERSION:Ljava/lang/Integer;

.field private static context:Landroid/content/Context;


# instance fields
.field private deviceLocale:Ljava/util/Locale;

.field private locale:Ljava/util/Locale;

.field private mCancelSync:Z

.field private mDownloadCallback:Lorg/inaturalist/android/INaturalistApp$OnDownloadFileProgress;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mIsSyncing:Z

.field private mNotificationCallback:Lorg/inaturalist/android/INaturalistApp$INotificationCallback;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mObservationIdBeingSynced:I

.field private mOnboardingShownBefore:Z

.field private mPermissionsCbByPermissionName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mServiceResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/inaturalist/android/INaturalistApp;->VERSION:Ljava/lang/Integer;

    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/inaturalist/android/INaturalistApp;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 103
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd h:mm:ss a z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/inaturalist/android/INaturalistApp;->DATETIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 104
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/inaturalist/android/INaturalistApp;->SHORT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 105
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm a z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/inaturalist/android/INaturalistApp;->SHORT_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x3

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/inaturalist/android/INaturalistApp;->SYNC_NOTIFICATION:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lorg/inaturalist/android/INaturalistApp;->mIsSyncing:Z

    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Lorg/inaturalist/android/INaturalistApp;->locale:Ljava/util/Locale;

    .line 109
    iput-object v1, p0, Lorg/inaturalist/android/INaturalistApp;->deviceLocale:Ljava/util/Locale;

    .line 111
    iput-boolean v0, p0, Lorg/inaturalist/android/INaturalistApp;->mOnboardingShownBefore:Z

    const/4 v1, -0x1

    .line 114
    iput v1, p0, Lorg/inaturalist/android/INaturalistApp;->mObservationIdBeingSynced:I

    .line 115
    iput-boolean v0, p0, Lorg/inaturalist/android/INaturalistApp;->mCancelSync:Z

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->mServiceResults:Ljava/util/Map;

    .line 918
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->mPermissionsCbByPermissionName:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/INaturalistApp;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistApp;->enableComponent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/inaturalist/android/INaturalistApp;)Lorg/inaturalist/android/INaturalistApp$OnDownloadFileProgress;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/inaturalist/android/INaturalistApp;->mDownloadCallback:Lorg/inaturalist/android/INaturalistApp$OnDownloadFileProgress;

    return-object p0
.end method

.method private enableComponent(Ljava/lang/String;)V
    .locals 11

    .line 421
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getINatNetworks()[Ljava/lang/String;

    move-result-object v1

    .line 424
    sget-boolean v2, Lorg/inaturalist/android/ObservationListActivity;->sActivityCreated:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 425
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 426
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "%s.%s.%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    const-class v8, Lorg/inaturalist/android/ObservationListActivity;

    .line 427
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    aget-object v8, v1, v3

    const/4 v10, 0x2

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v6, v1, v3

    .line 428
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v10, 0x1

    .line 426
    :cond_0
    invoke-virtual {v4, v5, v10, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 432
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/inaturalist/android/INaturalistApp$2;

    invoke-direct {v1, p0, p1}, Lorg/inaturalist/android/INaturalistApp$2;-><init>(Lorg/inaturalist/android/INaturalistApp;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 722
    sget-object v0, Lorg/inaturalist/android/INaturalistApp;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 672
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 673
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public static getUserCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 253
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    :try_start_0
    const-string v0, "phone"

    .line 255
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 256
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 258
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 259
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 260
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 262
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private replaceFont(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 4

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    .line 155
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "sans-serif"

    .line 156
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :try_start_0
    const-class p2, Landroid/graphics/Typeface;

    const-string v0, "sSystemFontMap"

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 159
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 160
    invoke-virtual {p2, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 168
    :cond_0
    :try_start_1
    const-class v0, Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 169
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 170
    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;)V
    .locals 4

    .line 933
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 934
    iget-object v3, p0, Lorg/inaturalist/android/INaturalistApp;->mPermissionsCbByPermissionName:Ljava/util/Map;

    invoke-interface {v3, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 938
    :cond_0
    new-instance p3, Ljava/lang/Thread;

    new-instance v0, Lorg/inaturalist/android/INaturalistApp$7;

    invoke-direct {v0, p0, p1, p2}, Lorg/inaturalist/android/INaturalistApp$7;-><init>(Lorg/inaturalist/android/INaturalistApp;Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-direct {p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 949
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setDefaultFont(Ljava/lang/String;I)V
    .locals 0

    .line 149
    invoke-static {p0, p2}, Landroid/support/v4/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p2

    .line 150
    invoke-direct {p0, p1, p2}, Lorg/inaturalist/android/INaturalistApp;->replaceFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method public applyLocaleSettings()V
    .locals 5

    .line 679
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 681
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const-string v2, "pref_locale"

    const-string v3, ""

    .line 683
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 684
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-r"

    .line 686
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 687
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 689
    new-instance v0, Ljava/util/Locale;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    aget-object v2, v2, v4

    invoke-direct {v0, v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 692
    :cond_0
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/inaturalist/android/INaturalistApp;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 695
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->deviceLocale:Ljava/util/Locale;

    iput-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->locale:Ljava/util/Locale;

    .line 697
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 698
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->locale:Ljava/util/Locale;

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 699
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 144
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public checkSyncNeeded()V
    .locals 9

    .line 741
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_synced_at IS NULL OR (_updated_at > _synced_at)"

    const-string v5, "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 743
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v4, "_synced_at IS NULL OR (_updated_at > _synced_at)"

    const-string v6, "position ASC, id ASC, _id ASC"

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 745
    iget-boolean v2, p0, Lorg/inaturalist/android/INaturalistApp;->mIsSyncing:Z

    if-nez v2, :cond_0

    .line 746
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lorg/inaturalist/android/INaturalistApp;->SYNC_NOTIFICATION:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 748
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 749
    sget-object v4, Lorg/inaturalist/android/INaturalistApp;->SYNC_NOTIFICATION:Ljava/lang/Integer;

    const v3, 0x7f100358

    .line 750
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v3, 0x7f100359

    .line 751
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC:Ljava/lang/String;

    const/4 v1, 0x0

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v8, v0, v1, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    move-object v3, p0

    .line 749
    invoke-virtual/range {v3 .. v8}, Lorg/inaturalist/android/INaturalistApp;->serviceNotify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public currentUserLogin()Ljava/lang/String;
    .locals 3

    .line 772
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "username"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public detectUserCountryAndUpdateNetwork(Landroid/content/Context;)V
    .locals 9

    .line 502
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 505
    :cond_0
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    .line 507
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 509
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d002c

    const/4 v3, 0x0

    .line 510
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a03ae

    .line 511
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 513
    invoke-static {p1}, Lorg/inaturalist/android/INaturalistApp;->getUserCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "INAT: Application"

    .line 514
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected country: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getINatNetworks()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez p1, :cond_1

    .line 520
    aget-object p1, v3, v4

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/INaturalistApp;->setInaturalistNetworkMember(Ljava/lang/String;)V

    return-void

    .line 525
    :cond_1
    aget-object v5, v3, v4

    const/4 v6, 0x0

    .line 526
    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_3

    .line 527
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inat_country_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 528
    aget-object v5, v3, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 534
    :cond_3
    :goto_1
    aget-object p1, v3, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inat_logo_"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 537
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 538
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "drawable"

    invoke-virtual {v6, p1, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 539
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alert_message_use_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 544
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lorg/inaturalist/android/INaturalistApp$4;

    invoke-direct {v2, p0, v5}, Lorg/inaturalist/android/INaturalistApp$4;-><init>(Lorg/inaturalist/android/INaturalistApp;Ljava/lang/String;)V

    new-instance v4, Lorg/inaturalist/android/INaturalistApp$5;

    invoke-direct {v4, p0, v3}, Lorg/inaturalist/android/INaturalistApp$5;-><init>(Lorg/inaturalist/android/INaturalistApp;[Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0, v1, p1, v2, v4}, Lorg/inaturalist/android/ActivityHelper;->confirm(Landroid/view/View;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 561
    :cond_4
    aget-object p1, v3, v4

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/INaturalistApp;->setInaturalistNetworkMember(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public downloadFile(Ljava/lang/String;Lorg/inaturalist/android/INaturalistApp$OnDownloadFileProgress;)V
    .locals 1

    .line 858
    iput-object p2, p0, Lorg/inaturalist/android/INaturalistApp;->mDownloadCallback:Lorg/inaturalist/android/INaturalistApp$OnDownloadFileProgress;

    .line 860
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lorg/inaturalist/android/INaturalistApp$6;

    invoke-direct {v0, p0, p1}, Lorg/inaturalist/android/INaturalistApp$6;-><init>(Lorg/inaturalist/android/INaturalistApp;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 903
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public formatDate(Ljava/sql/Timestamp;)Ljava/lang/String;
    .locals 1

    .line 834
    sget-object v0, Lorg/inaturalist/android/INaturalistApp;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDatetime(Ljava/sql/Timestamp;)Ljava/lang/String;
    .locals 1

    .line 835
    sget-object v0, Lorg/inaturalist/android/INaturalistApp;->DATETIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAutoSync()Z
    .locals 3

    .line 300
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_auto_sync"

    const/4 v2, 0x1

    .line 301
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCancelSync()Z
    .locals 1

    .line 737
    iget-boolean v0, p0, Lorg/inaturalist/android/INaturalistApp;->mCancelSync:Z

    return v0
.end method

.method public getColorResourceByName(Ljava/lang/String;)I
    .locals 1

    const-string v0, "color"

    .line 583
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistApp;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 587
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getErrorsForObservation(I)Lorg/json/JSONArray;
    .locals 5

    .line 349
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_observation_errors"

    const-string/jumbo v2, "{}"

    .line 350
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1

    .line 358
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 359
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 360
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 362
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 363
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 364
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 366
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 367
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p1

    .line 374
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 375
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1
.end method

.method public getINatNetworks()[Ljava/lang/String;
    .locals 2

    .line 568
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030007

    .line 569
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInaturalistNetworkMember()Ljava/lang/String;
    .locals 3

    .line 382
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_network_member"

    const/4 v2, 0x0

    .line 383
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsSyncing()Z
    .locals 1

    .line 729
    iget-boolean v0, p0, Lorg/inaturalist/android/INaturalistApp;->mIsSyncing:Z

    return v0
.end method

.method public getJWTToken()Ljava/lang/String;
    .locals 3

    .line 762
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "jwt_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginType()Lorg/inaturalist/android/INaturalistService$LoginType;
    .locals 3

    .line 767
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "login_type"

    sget-object v2, Lorg/inaturalist/android/INaturalistService$LoginType;->OAUTH_PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistService$LoginType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/inaturalist/android/INaturalistService$LoginType;->valueOf(Ljava/lang/String;)Lorg/inaturalist/android/INaturalistService$LoginType;

    move-result-object v0

    return-object v0
.end method

.method public getObservationIdBeingSynced()I
    .locals 1

    .line 121
    iget v0, p0, Lorg/inaturalist/android/INaturalistApp;->mObservationIdBeingSynced:I

    return v0
.end method

.method public getPrefs()Landroid/content/SharedPreferences;
    .locals 2

    .line 776
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    .line 777
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/INaturalistApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->mPrefs:Landroid/content/SharedPreferences;

    .line 779
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->mServiceResults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    return-object p1
.end method

.method public getShowScientificNameFirst()Z
    .locals 3

    .line 286
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "prefers_scientific_name_first"

    const/4 v2, 0x0

    .line 287
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getStringArrayResourceByName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 573
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 574
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "array"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 576
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0

    .line 578
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "string"

    .line 592
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistApp;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 596
    :cond_0
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/INaturalistApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 611
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    const-string v1, "string"

    .line 612
    invoke-direct {p0, p1, v1}, Lorg/inaturalist/android/INaturalistApp;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 615
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistApp;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 619
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/INaturalistApp;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 626
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_0

    .line 627
    new-instance v1, Landroid/os/LocaleList;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Locale;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-direct {v1, v4}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 628
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 629
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/INaturalistApp;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 631
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_1

    .line 632
    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 633
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/INaturalistApp;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 636
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 638
    invoke-virtual {p0, p2}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 621
    :catch_0
    invoke-virtual {p0, p2}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez p1, :cond_3

    .line 643
    invoke-virtual {p0, p2}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 647
    :cond_3
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/INaturalistApp;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 649
    :catch_1
    invoke-virtual {p0, p2}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringResourceByNameOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "string"

    .line 601
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistApp;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 605
    :cond_0
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/INaturalistApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSuggestSpecies()Z
    .locals 3

    .line 273
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_suggest_species"

    const/4 v2, 0x1

    .line 274
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasAutoSync()Z
    .locals 2

    .line 306
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_auto_sync"

    .line 307
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCameraPermissionGranted()Z
    .locals 1

    const-string v0, "android.permission.CAMERA"

    .line 979
    invoke-static {p0, v0}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExternalStoragePermissionGranted()Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 991
    invoke-static {p0, v0}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLocationEnabled(Lorg/inaturalist/android/INaturalistApp$OnLocationStatus;)Z
    .locals 4

    const-string v0, "location"

    .line 449
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/INaturalistApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 451
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "network"

    .line 452
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return v2

    .line 459
    :cond_2
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistApp;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v1, :cond_3

    .line 460
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 461
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/INaturalistApp;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 463
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistApp;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_3
    if-eqz p1, :cond_4

    .line 467
    new-instance v1, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v1}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    const-wide/16 v2, 0x2710

    .line 468
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v2, 0x1388

    .line 469
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    const/16 v2, 0x64

    .line 470
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 472
    new-instance v2, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    move-result-object v1

    .line 474
    sget-object v2, Lcom/google/android/gms/location/LocationServices;->SettingsApi:Lcom/google/android/gms/location/SettingsApi;

    iget-object v3, p0, Lorg/inaturalist/android/INaturalistApp;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/location/SettingsApi;->checkLocationSettings(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    .line 476
    new-instance v2, Lorg/inaturalist/android/INaturalistApp$3;

    invoke-direct {v2, p0, p1}, Lorg/inaturalist/android/INaturalistApp$3;-><init>(Lorg/inaturalist/android/INaturalistApp;Lorg/inaturalist/android/INaturalistApp$OnLocationStatus;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_4
    return v0
.end method

.method public isLocationPermissionGranted()Z
    .locals 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 985
    invoke-static {p0, v0}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 986
    invoke-static {p0, v0}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 907
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/INaturalistApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 908
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loggedIn()Z
    .locals 2

    .line 758
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "credentials"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public notify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 783
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/inaturalist/android/INaturalistApp;->notify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 787
    new-instance v5, Landroid/content/Intent;

    const-class v0, Lorg/inaturalist/android/ObservationListActivity;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 788
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 789
    invoke-virtual/range {v0 .. v5}, Lorg/inaturalist/android/INaturalistApp;->notify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public notify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0

    .line 817
    invoke-virtual {p0, p2, p3}, Lorg/inaturalist/android/INaturalistApp;->notify(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    .line 807
    invoke-static {p0, v0, p5, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 808
    invoke-virtual/range {v1 .. v6}, Lorg/inaturalist/android/INaturalistApp;->notify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public notify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 821
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 822
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/INaturalistApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->mNotificationManager:Landroid/app/NotificationManager;

    .line 825
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->mNotificationCallback:Lorg/inaturalist/android/INaturalistApp$INotificationCallback;

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->mNotificationCallback:Lorg/inaturalist/android/INaturalistApp$INotificationCallback;

    invoke-interface {v0, p1, p2}, Lorg/inaturalist/android/INaturalistApp$INotificationCallback;->onNotification(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 711
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 712
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 713
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistApp;->locale:Ljava/util/Locale;

    if-eqz p1, :cond_0

    .line 715
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistApp;->locale:Ljava/util/Locale;

    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 716
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistApp;->locale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 717
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 8

    .line 181
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    const/4 v0, 0x1

    .line 183
    new-array v1, v0, [Lio/fabric/sdk/android/Kit;

    new-instance v2, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v2}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 184
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 185
    invoke-static {p0}, Lorg/inaturalist/android/AnalyticsClient;->initAnalyticsClient(Landroid/app/Application;)V

    .line 187
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v1

    const-string v2, "AppLaunch"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/inaturalist/android/INaturalistApp$1;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/INaturalistApp$1;-><init>(Lorg/inaturalist/android/INaturalistApp;)V

    invoke-static {v1, v2}, Lcom/livefront/bridge/Bridge;->initialize(Landroid/content/Context;Lcom/livefront/bridge/SavedStateHandler;)V

    .line 204
    new-instance v1, Lcom/squareup/picasso/Picasso$Builder;

    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/squareup/picasso/LruCache;

    .line 205
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v4}, Lcom/squareup/picasso/LruCache;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso$Builder;->memoryCache(Lcom/squareup/picasso/Cache;)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    .line 207
    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->setSingletonInstance(Lcom/squareup/picasso/Picasso;)V

    const-string v1, "notification"

    .line 211
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/INaturalistApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lorg/inaturalist/android/INaturalistApp;->mNotificationManager:Landroid/app/NotificationManager;

    .line 212
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lorg/inaturalist/android/INaturalistApp;->context:Landroid/content/Context;

    .line 213
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 214
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/INaturalistApp;->deviceLocale:Ljava/util/Locale;

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lorg/inaturalist/android/INaturalistApp;->deviceLocale:Ljava/util/Locale;

    .line 218
    :goto_0
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->applyLocaleSettings()V

    .line 221
    invoke-static {p0}, Lorg/inaturalist/android/GuideXML;->createOfflineGuidesDirectory(Landroid/content/Context;)V

    const-string v1, "iNaturalistPreferences"

    .line 223
    invoke-virtual {p0, v1, v3}, Lorg/inaturalist/android/INaturalistApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "username"

    const/4 v3, 0x0

    .line 224
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/INaturalistApp;->setShownOnboarding(Z)V

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const/16 v0, 0x1234

    if-eq p1, v0, :cond_0

    return-void

    .line 957
    :cond_0
    array-length p1, p2

    const/4 v0, 0x0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 958
    :goto_0
    array-length v1, p3

    move v2, p1

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v1, :cond_3

    aget v3, p3, p1

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 965
    :cond_3
    array-length p1, p2

    :goto_2
    if-ge v0, p1, :cond_6

    aget-object p3, p2, v0

    .line 966
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistApp;->mPermissionsCbByPermissionName:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;

    if-eqz p3, :cond_5

    if-eqz v2, :cond_4

    .line 969
    invoke-interface {p3}, Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;->onPermissionGranted()V

    goto :goto_3

    .line 971
    :cond_4
    invoke-interface {p3}, Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;->onPermissionDenied()V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public requestCameraPermission(Landroid/app/Activity;Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;)V
    .locals 3

    const/4 v0, 0x1

    .line 921
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0, p2}, Lorg/inaturalist/android/INaturalistApp;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;)V

    return-void
.end method

.method public requestExternalStoragePermission(Landroid/app/Activity;Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;)V
    .locals 3

    const/4 v0, 0x1

    .line 929
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0, p2}, Lorg/inaturalist/android/INaturalistApp;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;)V

    return-void
.end method

.method public requestLocationPermission(Landroid/app/Activity;Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;)V
    .locals 3

    const/4 v0, 0x2

    .line 925
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0, p2}, Lorg/inaturalist/android/INaturalistApp;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;)V

    return-void
.end method

.method public restart()V
    .locals 2

    .line 703
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 704
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 705
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 706
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/INaturalistApp;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public serviceNotify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    .line 812
    invoke-static {p0, v0, p5, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 813
    invoke-virtual/range {v1 .. v6}, Lorg/inaturalist/android/INaturalistApp;->notify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setAutoSync(Z)V
    .locals 2

    .line 311
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 312
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_auto_sync"

    .line 314
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 315
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCancelSync(Z)V
    .locals 0

    .line 734
    iput-boolean p1, p0, Lorg/inaturalist/android/INaturalistApp;->mCancelSync:Z

    return-void
.end method

.method public setDownloadCallback(Lorg/inaturalist/android/INaturalistApp$OnDownloadFileProgress;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistApp;->mDownloadCallback:Lorg/inaturalist/android/INaturalistApp$OnDownloadFileProgress;

    return-void
.end method

.method public setErrorsForObservation(IILorg/json/JSONArray;)V
    .locals 4

    .line 328
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_observation_errors"

    const-string/jumbo v2, "{}"

    .line 329
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 339
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "pref_observation_errors"

    .line 340
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 342
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 345
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setInaturalistNetworkMember(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 388
    invoke-virtual {p0, p1, v0}, Lorg/inaturalist/android/INaturalistApp;->setInaturalistNetworkMember(Ljava/lang/String;Z)V

    return-void
.end method

.method public setInaturalistNetworkMember(Ljava/lang/String;Z)V
    .locals 3

    .line 393
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 394
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_network_member"

    .line 396
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 397
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p2, :cond_0

    .line 401
    new-instance p2, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_UPDATE_USER_NETWORK:Ljava/lang/String;

    const/4 v1, 0x0

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p2, v0, v1, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "network_site_id"

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inat_site_id_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 403
    invoke-static {p0, p2}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 409
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getINatNetworks()[Ljava/lang/String;

    move-result-object p2

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "change_app_title_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 414
    aget-object p1, p2, p1

    .line 417
    :cond_1
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistApp;->enableComponent(Ljava/lang/String;)V

    return-void
.end method

.method public setIsSyncing(Z)V
    .locals 0

    .line 726
    iput-boolean p1, p0, Lorg/inaturalist/android/INaturalistApp;->mIsSyncing:Z

    return-void
.end method

.method public setNotificationCallback(Lorg/inaturalist/android/INaturalistApp$INotificationCallback;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistApp;->mNotificationCallback:Lorg/inaturalist/android/INaturalistApp$INotificationCallback;

    return-void
.end method

.method public setObservationIdBeingSynced(I)V
    .locals 0

    .line 125
    iput p1, p0, Lorg/inaturalist/android/INaturalistApp;->mObservationIdBeingSynced:I

    return-void
.end method

.method public setOnBoardingTextsShown()V
    .locals 3

    .line 319
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 320
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "onboarded_syncing"

    const/4 v2, 0x1

    .line 322
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "onboarded_species_guess"

    .line 323
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 324
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->mServiceResults:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setShowScientificNameFirst(Z)V
    .locals 2

    .line 291
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 292
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefers_scientific_name_first"

    .line 294
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setShownOnboarding(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lorg/inaturalist/android/INaturalistApp;->mOnboardingShownBefore:Z

    return-void
.end method

.method public setStringResourceForView(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 655
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 656
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 658
    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 663
    :cond_1
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 664
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p3, p4}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 665
    :cond_2
    instance-of p2, p1, Landroid/widget/Button;

    if-eqz p2, :cond_3

    .line 666
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p0, p3, p4}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setSuggestSpecies(Z)V
    .locals 2

    .line 278
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 279
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_suggest_species"

    .line 281
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 282
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public shortFormatDate(Ljava/sql/Timestamp;)Ljava/lang/String;
    .locals 2

    .line 838
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 841
    :cond_0
    sget-object v0, Lorg/inaturalist/android/INaturalistApp;->SHORT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 843
    :goto_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public shortFormatTime(Ljava/sql/Timestamp;)Ljava/lang/String;
    .locals 1

    .line 845
    sget-object v0, Lorg/inaturalist/android/INaturalistApp;->SHORT_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public shownOnboarding()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lorg/inaturalist/android/INaturalistApp;->mOnboardingShownBefore:Z

    return v0
.end method

.method public sweepingNotify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 800
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 803
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/inaturalist/android/INaturalistApp;->notify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sweepingNotify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    .line 793
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistApp;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 796
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lorg/inaturalist/android/INaturalistApp;->notify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
