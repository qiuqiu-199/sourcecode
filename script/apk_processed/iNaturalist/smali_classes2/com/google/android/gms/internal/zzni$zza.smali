.class public final Lcom/google/android/gms/internal/zzni$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zzRH:I

.field private zzRI:I

.field private zzUE:I

.field private zzUF:Z

.field private zzUG:Z

.field private zzUH:Ljava/lang/String;

.field private zzUI:Ljava/lang/String;

.field private zzUJ:Z

.field private zzUK:Z

.field private zzUL:Z

.field private zzUM:Z

.field private zzUN:Ljava/lang/String;

.field private zzUO:Ljava/lang/String;

.field private zzUP:I

.field private zzUQ:I

.field private zzUR:I

.field private zzUS:I

.field private zzUT:I

.field private zzUU:I

.field private zzUV:D

.field private zzUW:Z

.field private zzUX:Z

.field private zzUY:I

.field private zzUZ:Ljava/lang/String;

.field private zzVa:Z

.field private zzxk:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzni$zza;->zzw(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzni$zza;->zzx(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzni$zza;->zzy(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "geo:0,0?q=donuts"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzni$zza;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUF:Z

    const-string v2, "http://www.google.com"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzni$zza;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUG:Z

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUI:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzqe;->zzli()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUJ:Z

    invoke-static {p1}, Lcom/google/android/gms/common/util/zzj;->zzbb(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUK:Z

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUN:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzni$zza;->zza(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUO:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/gms/internal/zzni$zza;->zzxk:F

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/google/android/gms/internal/zzni$zza;->zzRH:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzRI:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzni;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzni$zza;->zzw(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzni$zza;->zzx(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzni$zza;->zzy(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzni$zza;->zzz(Landroid/content/Context;)V

    iget-boolean p1, p2, Lcom/google/android/gms/internal/zzni;->zzUF:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUF:Z

    iget-boolean p1, p2, Lcom/google/android/gms/internal/zzni;->zzUG:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUG:Z

    iget-object p1, p2, Lcom/google/android/gms/internal/zzni;->zzUI:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUI:Ljava/lang/String;

    iget-boolean p1, p2, Lcom/google/android/gms/internal/zzni;->zzUJ:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUJ:Z

    iget-boolean p1, p2, Lcom/google/android/gms/internal/zzni;->zzUK:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUK:Z

    iget-object p1, p2, Lcom/google/android/gms/internal/zzni;->zzUN:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUN:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/zzni;->zzUO:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUO:Ljava/lang/String;

    iget p1, p2, Lcom/google/android/gms/internal/zzni;->zzxk:F

    iput p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzxk:F

    iget p1, p2, Lcom/google/android/gms/internal/zzni;->zzRH:I

    iput p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzRH:I

    iget p1, p2, Lcom/google/android/gms/internal/zzni;->zzRI:I

    iput p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzRI:I

    return-void
.end method

.method private static zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 3

    const-string v0, "market://details?id=com.google.android.gms.ads"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzni$zza;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object p0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzadf;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    return-object p0

    :catch_0
    return-object v0
.end method

.method private zzw(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpo;->zzR(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUE:I

    invoke-virtual {p1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUL:Z

    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUM:Z

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUP:I

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUT:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUU:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    const-string v1, "DeviceInfo.gatherAudioInfo"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzpe;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    const/4 p1, -0x2

    iput p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUE:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUL:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUM:Z

    iput p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUP:I

    iput p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUT:I

    iput p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUU:I

    return-void
.end method

.method private zzx(Landroid/content/Context;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUH:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUR:I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUS:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUQ:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUX:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUY:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/zzpo;->zze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUQ:I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUY:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUQ:I

    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUX:Z

    :cond_1
    return-void
.end method

.method private zzy(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "level"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "scale"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float v2, v3

    int-to-float p1, p1

    div-float/2addr v2, p1

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUV:D

    const/4 p1, 0x2

    if-eq v1, p1, :cond_0

    const/4 p1, 0x5

    if-ne v1, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUV:D

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUW:Z

    return-void
.end method

.method private zzz(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzni$zza;->zzUZ:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzgr;->zzo(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzni$zza;->zzVa:Z

    return-void
.end method


# virtual methods
.method public zzjC()Lcom/google/android/gms/internal/zzni;
    .locals 32

    move-object/from16 v0, p0

    new-instance v29, Lcom/google/android/gms/internal/zzni;

    move-object/from16 v1, v29

    iget v2, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUE:I

    iget-boolean v3, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUF:Z

    iget-boolean v4, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUG:Z

    iget-object v5, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUH:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUI:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUJ:Z

    iget-boolean v8, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUK:Z

    iget-boolean v9, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUL:Z

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUM:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUN:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUO:Ljava/lang/String;

    iget v13, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUP:I

    iget v14, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUQ:I

    iget v15, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUR:I

    move-object/from16 v30, v1

    iget v1, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUS:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUT:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUU:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/gms/internal/zzni$zza;->zzxk:F

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/gms/internal/zzni$zza;->zzRH:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/android/gms/internal/zzni$zza;->zzRI:I

    move/from16 v21, v1

    move/from16 v31, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUV:D

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUW:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUX:Z

    move/from16 v25, v1

    iget v1, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUY:I

    move/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzni$zza;->zzUZ:Ljava/lang/String;

    move-object/from16 v27, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzni$zza;->zzVa:Z

    move/from16 v28, v1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/zzni;-><init>(IZZLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;IIIIIIFIIDZZILjava/lang/String;Z)V

    return-object v29
.end method
