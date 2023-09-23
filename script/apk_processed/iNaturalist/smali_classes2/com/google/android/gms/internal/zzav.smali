.class public Lcom/google/android/gms/internal/zzav;
.super Lcom/google/android/gms/internal/zzau;


# static fields
.field private static final TAG:Ljava/lang/String; = "zzav"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzau;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static zza(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/zzav;
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzav;->zza(Landroid/content/Context;Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzav;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/internal/zzav;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method protected zzb(Lcom/google/android/gms/internal/zzbd;Lcom/google/android/gms/internal/zzag$zza;Lcom/google/android/gms/internal/zzae$zza;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbd;",
            "Lcom/google/android/gms/internal/zzag$zza;",
            "Lcom/google/android/gms/internal/zzae$zza;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbd;->zzaI()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzav;->zzpU:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbd;->zzQ()I

    move-result v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzau;->zzb(Lcom/google/android/gms/internal/zzbd;Lcom/google/android/gms/internal/zzag$zza;Lcom/google/android/gms/internal/zzae$zza;)Ljava/util/List;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p3, Lcom/google/android/gms/internal/zzbo;

    invoke-static {}, Lcom/google/android/gms/internal/zzaz;->zzai()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzaz;->zzaj()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x18

    move-object v1, p3

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzbo;-><init>(Lcom/google/android/gms/internal/zzbd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzag$zza;II)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzau;->zzb(Lcom/google/android/gms/internal/zzbd;Lcom/google/android/gms/internal/zzag$zza;Lcom/google/android/gms/internal/zzae$zza;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
