.class Lcom/google/android/gms/tagmanager/zzak;
.super Lcom/google/android/gms/tagmanager/zzam;


# static fields
.field private static final ID:Ljava/lang/String;


# instance fields
.field private final zzbEW:Lcom/google/android/gms/tagmanager/zzcx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzah;->zzdu:Lcom/google/android/gms/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzak;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzcx;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/tagmanager/zzak;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzam;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzbEW:Lcom/google/android/gms/tagmanager/zzcx;

    return-void
.end method


# virtual methods
.method public zzQb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzZ(Ljava/util/Map;)Lcom/google/android/gms/internal/zzak$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzak$zza;",
            ">;)",
            "Lcom/google/android/gms/internal/zzak$zza;"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzak;->zzbEW:Lcom/google/android/gms/tagmanager/zzcx;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzcx;->zzRo()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzRR()Lcom/google/android/gms/internal/zzak$zza;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdl;->zzR(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzak$zza;

    move-result-object p1

    :goto_0
    return-object p1
.end method
