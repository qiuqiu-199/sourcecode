.class public Lcom/google/android/gms/internal/zzgk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzFN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzgj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzsn:Lcom/google/android/gms/internal/zzgl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzgl;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/zzgl;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgk;->zzsn:Lcom/google/android/gms/internal/zzgl;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgk;->zzFN:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgk;->zzFN:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgk;->zzsn:Lcom/google/android/gms/internal/zzgl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgk;->zzFN:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzgj;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, p2, p3, p4, v1}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzgj;J[Ljava/lang/String;)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/zzgk;->zzFN:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgk;->zzsn:Lcom/google/android/gms/internal/zzgl;

    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/internal/zzgl;J)Lcom/google/android/gms/internal/zzgj;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzfA()Lcom/google/android/gms/internal/zzgl;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgk;->zzsn:Lcom/google/android/gms/internal/zzgl;

    return-object v0
.end method
