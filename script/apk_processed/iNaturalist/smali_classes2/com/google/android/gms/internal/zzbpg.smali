.class final enum Lcom/google/android/gms/internal/zzbpg;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/zzbpi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzbpg;",
        ">;",
        "Lcom/google/android/gms/internal/zzbpi;"
    }
.end annotation


# static fields
.field public static final enum zzcei:Lcom/google/android/gms/internal/zzbpg;

.field private static final synthetic zzcej:[Lcom/google/android/gms/internal/zzbpg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbpg;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbpg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbpg;->zzcei:Lcom/google/android/gms/internal/zzbpg;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbpg;

    sget-object v1, Lcom/google/android/gms/internal/zzbpg;->zzcei:Lcom/google/android/gms/internal/zzbpg;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/zzbpg;->zzcej:[Lcom/google/android/gms/internal/zzbpg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzbpg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbpg;->zzcej:[Lcom/google/android/gms/internal/zzbpg;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzbpg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzbpg;

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbpa;Lcom/google/android/gms/internal/zzbol;Lcom/google/android/gms/internal/zzbon;Lcom/google/android/gms/internal/zzbop$zza;)Lcom/google/android/gms/internal/zzbop;
    .locals 0

    new-instance p2, Lcom/google/android/gms/internal/zzboq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpa;->zzYy()Lcom/google/android/gms/internal/zzbol;

    move-result-object p1

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/gms/internal/zzboq;-><init>(Lcom/google/android/gms/internal/zzbol;Lcom/google/android/gms/internal/zzbon;Lcom/google/android/gms/internal/zzbop$zza;)V

    return-object p2
.end method

.method public zza(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzbow;
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Authentication is not implemented yet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbpa;)Lcom/google/android/gms/internal/zzbpe;
    .locals 2

    new-instance p1, Lcom/google/android/gms/internal/zzbpu;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbpt;->zzcgl:Lcom/google/android/gms/internal/zzbpt;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzbpu;-><init>(Ljava/util/concurrent/ThreadFactory;Lcom/google/android/gms/internal/zzbpt;)V

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbpa;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbql;
    .locals 0

    const/4 p1, 0x0

    return-object p1
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

    new-instance p1, Lcom/google/android/gms/internal/zzbrm;

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/zzbrm;-><init>(Lcom/google/android/gms/internal/zzbro$zza;Ljava/util/List;)V

    return-object p1
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbpa;)Lcom/google/android/gms/internal/zzbpm;
    .locals 1

    const-string v0, "RunLoop"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbpa;->zziV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzbpg$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbpg$1;-><init>(Lcom/google/android/gms/internal/zzbpg;Lcom/google/android/gms/internal/zzbrn;)V

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbpa;)Ljava/lang/String;
    .locals 3

    const-string p1, "java.vm.name"

    const-string v0, "Unknown JVM"

    invoke-static {p1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.specification.version"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
