.class public Lcom/google/firebase/iid/zzg;
.super Ljava/lang/Object;


# static fields
.field private static zzclA:Lcom/google/firebase/iid/zzg;


# instance fields
.field private final zzclB:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzclC:Ljava/lang/Boolean;

.field final zzclD:Ljava/util/Queue;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final zzclE:Ljava/util/Queue;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclB:Landroid/support/v4/util/SimpleArrayMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclC:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclD:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclE:Ljava/util/Queue;

    return-void
.end method

.method public static zza(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "com.google.firebase.INSTANCE_ID_EVENT"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/firebase/iid/zzg;->zza(Landroid/content/Context;ILjava/lang/String;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Landroid/content/Context;ILjava/lang/String;Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "wrapped_intent"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p0, p1, v0, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized zzabU()Lcom/google/firebase/iid/zzg;
    .locals 2

    const-class v0, Lcom/google/firebase/iid/zzg;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/iid/zzg;->zzclA:Lcom/google/firebase/iid/zzg;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/iid/zzg;

    invoke-direct {v1}, Lcom/google/firebase/iid/zzg;-><init>()V

    sput-object v1, Lcom/google/firebase/iid/zzg;->zzclA:Lcom/google/firebase/iid/zzg;

    :cond_0
    sget-object v1, Lcom/google/firebase/iid/zzg;->zzclA:Lcom/google/firebase/iid/zzg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static zzb(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/firebase/iid/zzg;->zza(Landroid/content/Context;ILjava/lang/String;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private zzcv(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclC:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "android.permission.WAKE_LOCK"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzg;->zzclC:Ljava/lang/Boolean;

    :cond_1
    iget-object p1, p0, Lcom/google/firebase/iid/zzg;->zzclC:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private zze(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclB:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/iid/zzg;->zzclB:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_3
    :goto_0
    move-object v1, v0

    iget-object v2, p0, Lcom/google/firebase/iid/zzg;->zzclB:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclB:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_1
    const-string p1, "FirebaseInstanceId"

    iget-object p2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Error resolving target intent service, skipping classname enforcement. Resolved service was: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_2
    const-string p1, "FirebaseInstanceId"

    const-string p2, "Failed to resolve target intent service, skipping classname enforcement"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    :goto_3
    const-string v0, "FirebaseInstanceId"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "FirebaseInstanceId"

    const-string v2, "Restricting intent to a specific service: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_7
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_4
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private zzg(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/zzg;->zze(Landroid/content/Context;Landroid/content/Intent;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzg;->zzcv(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/support/v4/content/WakefulBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    const-string p2, "FirebaseInstanceId"

    const-string v0, "Missing wake lock permission, service start may be delayed"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "FirebaseInstanceId"

    const-string p2, "Error while delivering the message: ServiceIntent not found."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x194

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "FirebaseInstanceId"

    const-string v0, "Error while delivering the message to the serviceIntent"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x191

    return p1
.end method


# virtual methods
.method public zzabV()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclD:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public zzabW()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public zzb(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x32362dbf

    if-eq v0, v1, :cond_1

    const v1, 0x279bd20

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "com.google.firebase.INSTANCE_ID_EVENT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string p1, "FirebaseInstanceId"

    const-string p3, "Unknown service action: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclE:Ljava/util/Queue;

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclD:Ljava/util/Queue;

    :goto_2
    invoke-interface {v0, p3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, p3}, Lcom/google/firebase/iid/zzg;->zzg(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p1

    return p1

    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1f4

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zzf(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "com.google.firebase.INSTANCE_ID_EVENT"

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/firebase/iid/zzg;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I

    return-void
.end method
