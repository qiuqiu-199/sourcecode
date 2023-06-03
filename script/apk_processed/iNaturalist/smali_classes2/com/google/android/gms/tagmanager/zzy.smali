.class Lcom/google/android/gms/tagmanager/zzy;
.super Lcom/google/android/gms/tagmanager/zzdj;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final VALUE:Ljava/lang/String;

.field private static final zzbFV:Ljava/lang/String;


# instance fields
.field private final zzbEV:Lcom/google/android/gms/tagmanager/DataLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzah;->zzdT:Lcom/google/android/gms/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzy;->ID:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzai;->zzke:Lcom/google/android/gms/internal/zzai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzai;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzy;->VALUE:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzai;->zzgg:Lcom/google/android/gms/internal/zzai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzai;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzy;->zzbFV:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/DataLayer;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/tagmanager/zzy;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/tagmanager/zzy;->VALUE:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzdj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbEV:Lcom/google/android/gms/tagmanager/DataLayer;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzak$zza;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzRL()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdl;->zze(Lcom/google/android/gms/internal/zzak$zza;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzRQ()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbEV:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->zzha(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private zzb(Lcom/google/android/gms/internal/zzak$zza;)V
    .locals 2

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzRL()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdl;->zzj(Lcom/google/android/gms/internal/zzak$zza;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbEV:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public zzab(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzak$zza;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/zzy;->VALUE:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzak$zza;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzy;->zzb(Lcom/google/android/gms/internal/zzak$zza;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/zzy;->zzbFV:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzak$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzy;->zza(Lcom/google/android/gms/internal/zzak$zza;)V

    return-void
.end method
