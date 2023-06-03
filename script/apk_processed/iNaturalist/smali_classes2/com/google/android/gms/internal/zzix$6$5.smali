.class Lcom/google/android/gms/internal/zzix$6$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzix$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzix$6;->zza(Lcom/google/android/gms/internal/zznt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzIS:Lcom/google/android/gms/internal/zznt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzix$6;Lcom/google/android/gms/internal/zznt;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzix$6$5;->zzIS:Lcom/google/android/gms/internal/zznt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zziy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zziy;->zzIZ:Lcom/google/android/gms/internal/zznw;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/zziy;->zzIZ:Lcom/google/android/gms/internal/zznw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzix$6$5;->zzIS:Lcom/google/android/gms/internal/zznt;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zznw;->zza(Lcom/google/android/gms/internal/zznt;)V

    :cond_0
    return-void
.end method
