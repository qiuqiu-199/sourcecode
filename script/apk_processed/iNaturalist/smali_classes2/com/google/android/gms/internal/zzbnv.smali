.class public Lcom/google/android/gms/internal/zzbnv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbpi;


# instance fields
.field private final zzcau:Lcom/google/firebase/FirebaseApp;

.field private final zzcaz:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzqo:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnv;->zzcaz:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnv;->zzcau:Lcom/google/firebase/FirebaseApp;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbnv;->zzcau:Lcom/google/firebase/FirebaseApp;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbnv;->zzcau:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnv;->zzqo:Landroid/content/Context;

    return-void

    :cond_0
    const-string p1, "FirebaseDatabase"

    const-string v0, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "FirebaseDatabase"

    const-string v0, "ERROR: You must call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "FirebaseDatabase"

    const-string v0, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You need to call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbnv;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbnv;->zzqo:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbpa;Lcom/google/android/gms/internal/zzbol;Lcom/google/android/gms/internal/zzbon;Lcom/google/android/gms/internal/zzbop$zza;)Lcom/google/android/gms/internal/zzbop;
    .locals 8

    new-instance v7, Lcom/google/firebase/database/connection/idl/zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpa;->zzYe()Lcom/google/android/gms/internal/zzbro$zza;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpa;->zzXu()Z

    move-result v4

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpa;->zzkn()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/database/connection/idl/zzc;-><init>(Lcom/google/android/gms/internal/zzbon;Lcom/google/android/gms/internal/zzbro$zza;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbnv;->zzqo:Landroid/content/Context;

    invoke-static {p1, v7, p2, p4}, Lcom/google/firebase/database/connection/idl/zze;->zza(Landroid/content/Context;Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/android/gms/internal/zzbol;Lcom/google/android/gms/internal/zzbop$zza;)Lcom/google/firebase/database/connection/idl/zze;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbnv;->zzcau:Lcom/google/firebase/FirebaseApp;

    new-instance p3, Lcom/google/android/gms/internal/zzbnv$2;

    invoke-direct {p3, p0, p1}, Lcom/google/android/gms/internal/zzbnv$2;-><init>(Lcom/google/android/gms/internal/zzbnv;Lcom/google/android/gms/internal/zzbop;)V

    invoke-virtual {p2, p3}, Lcom/google/firebase/FirebaseApp;->zza(Lcom/google/firebase/FirebaseApp$zzb;)V

    return-object p1
.end method

.method public zza(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzbow;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbnt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnv;->zzcau:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzbnt;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbpa;)Lcom/google/android/gms/internal/zzbpe;
    .locals 0

    new-instance p1, Lcom/google/android/gms/internal/zzbnu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzbnu;-><init>()V

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbpa;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbql;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpa;->zzYC()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnv;->zzcaz:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnv;->zzcaz:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/zzbnw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnv;->zzqo:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzbnw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbpa;Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/zzbqj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpa;->zzYz()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Lcom/google/android/gms/internal/zzbqj;-><init>(J)V

    new-instance v1, Lcom/google/android/gms/internal/zzbqi;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/gms/internal/zzbqi;-><init>(Lcom/google/android/gms/internal/zzbpa;Lcom/google/android/gms/internal/zzbqm;Lcom/google/android/gms/internal/zzbqh;)V

    return-object v1

    :cond_0
    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "SessionPersistenceKey \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' has already been used."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbpa;Lcom/google/android/gms/internal/zzbro$zza;Ljava/util/List;)Lcom/google/android/gms/internal/zzbro;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbpa;",
            "Lcom/google/android/gms/internal/zzbro$zza;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/zzbro;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/zzbrl;

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/zzbrl;-><init>(Lcom/google/android/gms/internal/zzbro$zza;Ljava/util/List;)V

    return-object p1
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbpa;)Lcom/google/android/gms/internal/zzbpm;
    .locals 1

    const-string v0, "RunLoop"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbpa;->zziV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzbnv$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbnv$1;-><init>(Lcom/google/android/gms/internal/zzbnv;Lcom/google/android/gms/internal/zzbrn;)V

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbpa;)Ljava/lang/String;
    .locals 2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/Android"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
