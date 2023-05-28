.class public Lcom/google/android/gms/internal/zzarj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/instantapps/PackageManagerWrapper;


# static fields
.field private static zzbiO:Lcom/google/android/gms/internal/zzarj;


# instance fields
.field private final zzbiP:Z

.field private final zzqn:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzarj;->zzbiP:Z

    return-void
.end method

.method private zzeO(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.google.android.instantapps.supervisor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static declared-synchronized zzh(Landroid/content/Context;Z)Lcom/google/android/gms/internal/zzarj;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/zzarj;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/zzarj;->zzbiO:Lcom/google/android/gms/internal/zzarj;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzarj;->zzbiO:Lcom/google/android/gms/internal/zzarj;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    if-ne v1, p0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzarj;->zzbiO:Lcom/google/android/gms/internal/zzarj;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzarj;->zzbiP:Z

    if-eq v1, p1, :cond_1

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzarj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzarj;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/google/android/gms/internal/zzarj;->zzbiO:Lcom/google/android/gms/internal/zzarj;

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/zzarj;->zzbiO:Lcom/google/android/gms/internal/zzarj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzarj;->zzbiP:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzarf;->zzbF(Landroid/content/Context;)Lcom/google/android/gms/internal/zzarf;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzarf;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_1

    return-object p1

    :catch_1
    move-exception p1

    const-string p2, "InstantAppsPMW"

    const-string v0, "Error getting application info"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw p1
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzarj;->zzbiP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzarf;->zzbF(Landroid/content/Context;)Lcom/google/android/gms/internal/zzarf;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzarf;->zzeM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "InstantAppsPMW"

    const-string v1, "Error getting application label"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;
    .locals 3

    invoke-virtual {p1}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzarj;->zzeO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzarf;->zzbF(Landroid/content/Context;)Lcom/google/android/gms/internal/zzarf;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarf;->zzeN(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "InstantAppsPMW"

    const-string v2, "Error getting calling activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object p1
.end method

.method public getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzarj;->getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzarj;->zzbiP:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzarf;->zzbF(Landroid/content/Context;)Lcom/google/android/gms/internal/zzarf;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzarf;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_1

    return-object p1

    :catch_1
    move-exception p1

    const-string p2, "InstantAppsPMW"

    const-string v0, "Error getting package info"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw p1
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzarj;->zzbiP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzarf;->zzbF(Landroid/content/Context;)Lcom/google/android/gms/internal/zzarf;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzarf;->zzjS(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "InstantAppsPMW"

    const-string v2, "Error getting app package for UID"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method

.method public isInstantApp(I)Z
    .locals 3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzade;->zzbg(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarj;->zzqn:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzarf;->zzbF(Landroid/content/Context;)Lcom/google/android/gms/internal/zzarf;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzarf;->zzjS(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p1

    const-string v0, "InstantAppsPMW"

    const-string v2, "Error checking if app is instant app"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v1
.end method
