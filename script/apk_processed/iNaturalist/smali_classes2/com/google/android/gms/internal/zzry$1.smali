.class Lcom/google/android/gms/internal/zzry$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzry;->setLocalDispatchPeriod(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzadH:I

.field final synthetic zzadI:Lcom/google/android/gms/internal/zzry;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzry;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzry$1;->zzadI:Lcom/google/android/gms/internal/zzry;

    iput p2, p0, Lcom/google/android/gms/internal/zzry$1;->zzadH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzry$1;->zzadI:Lcom/google/android/gms/internal/zzry;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzry;)Lcom/google/android/gms/internal/zzsi;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzry$1;->zzadH:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzsi;->zzx(J)V

    return-void
.end method
