.class Lcom/google/android/gms/internal/zzlx$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzql$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlx;->zzd(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzql$zza<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/zzgu;",
        ">;",
        "Lcom/google/android/gms/internal/zzgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzQJ:Ljava/lang/String;

.field final synthetic zzQK:Ljava/lang/Integer;

.field final synthetic zzQL:Ljava/lang/Integer;

.field final synthetic zzQM:I

.field final synthetic zzQN:I

.field final synthetic zzQO:I

.field final synthetic zzQP:I

.field final synthetic zzQQ:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlx;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IIIIZ)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlx$5;->zzQJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlx$5;->zzQK:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlx$5;->zzQL:Ljava/lang/Integer;

    iput p5, p0, Lcom/google/android/gms/internal/zzlx$5;->zzQM:I

    iput p6, p0, Lcom/google/android/gms/internal/zzlx$5;->zzQN:I

    iput p7, p0, Lcom/google/android/gms/internal/zzlx$5;->zzQO:I

    iput p8, p0, Lcom/google/android/gms/internal/zzlx$5;->zzQP:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzlx$5;->zzQQ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlx$5;->zzj(Ljava/util/List;)Lcom/google/android/gms/internal/zzgs;

    move-result-object p1

    return-object p1
.end method

.method public zzj(Ljava/util/List;)Lcom/google/android/gms/internal/zzgs;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzgu;",
            ">;)",
            "Lcom/google/android/gms/internal/zzgs;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzgs;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzlx$5;->zzQJ:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlx;->zzi(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzlx$5;->zzQK:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzlx$5;->zzQL:Ljava/lang/Integer;

    iget p1, p0, Lcom/google/android/gms/internal/zzlx$5;->zzQM:I

    if-lez p1, :cond_1

    iget p1, p0, Lcom/google/android/gms/internal/zzlx$5;->zzQM:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v7, p1

    goto :goto_0

    :cond_1
    move-object v7, v0

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/zzlx$5;->zzQN:I

    iget v2, p0, Lcom/google/android/gms/internal/zzlx$5;->zzQO:I

    add-int v8, p1, v2

    iget v9, p0, Lcom/google/android/gms/internal/zzlx$5;->zzQP:I

    iget-boolean v10, p0, Lcom/google/android/gms/internal/zzlx$5;->zzQQ:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/zzgs;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "Could not get attribution icon"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object v0
.end method
