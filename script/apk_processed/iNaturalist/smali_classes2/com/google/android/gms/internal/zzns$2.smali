.class Lcom/google/android/gms/internal/zzns$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzns;->zza(Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzgl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzVo:Lcom/google/android/gms/internal/zzns;

.field final synthetic zzsI:Lcom/google/android/gms/internal/zzpb$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzns;Lcom/google/android/gms/internal/zzpb$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzns$2;->zzVo:Lcom/google/android/gms/internal/zzns;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzns$2;->zzsI:Lcom/google/android/gms/internal/zzpb$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns$2;->zzVo:Lcom/google/android/gms/internal/zzns;

    new-instance v10, Lcom/google/android/gms/internal/zzpb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzns$2;->zzsI:Lcom/google/android/gms/internal/zzpb$zza;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzpb;-><init>(Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzkb;Ljava/lang/String;Lcom/google/android/gms/internal/zzjt;Lcom/google/android/gms/internal/zzha$zza;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/zzns;->zzb(Lcom/google/android/gms/internal/zzpb;)V

    return-void
.end method
